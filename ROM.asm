; Implantable Stimulator-Transponder (IST) Program
; ------------------------------------------------

; This code runs in the OSR8V3 microprocessor of the A3041A.

; V1: Provides a ramp value for transmission at 128 SPS. Sets
; TP1 is set during the transmit interrupt. TP2 is set during the
; main loop. RCK is connected directly to the reference clock. The
; TCK pin is connected to FHI.

; Calibration Constants
const rf_lo             5  ; Transmit frequency calibration
const device_id    0xA123  ; Will be used as the first channel number.

; Address Map Boundary Constants
const mmu_vmem 0x0000 ; Base of Variable Memory
const mmu_cmem 0x0400 ; Base of Command Memory
const mmu_ctrl 0x0800 ; Base of Control Space
const mmu_sba  0x0300 ; Stack Base Address

; Address Map Locations
const mmu_bmb  0x0800 ; Sensor Data HI Byte
const mmu_scr  0x0801 ; Sensor Control Register
const mmu_irqb 0x0802 ; Interrupt Request Bits
const mmu_imsk 0x0803 ; Interrupt Mask Bits
const mmu_irst 0x0804 ; Interrupt Reset Bits
const mmu_dva  0x0805 ; Device Active
const mmu_stc  0x0806 ; Stimulus Current
const mmu_rst  0x0807 ; System Reset
const mmu_xhb  0x0808 ; Transmit HI Byte
const mmu_xlb  0x0809 ; Transmit LO Byte
const mmu_xcn  0x080A ; Transmit Channel Number
const mmu_xcr  0x080B ; Transmit Control Register
const mmu_xfc  0x080C ; Transmit Frequency Calibration
const mmu_etc  0x080D ; Enable Transmit Clock
const mmu_tcf  0x080E ; Transmit Clock Frequency
const mmu_tcd  0x080F ; Transmit Clock Divider
const mmu_bcc  0x0810 ; Boost CPU Clock
const mmu_dfr  0x0811 ; Diagnostic Flag Register
const mmu_sr   0x0812 ; Status Register
const mmu_cch  0x0813 ; Command Count HI
const mmu_ccl  0x0814 ; Command Count LO
const mmu_cpr  0x0815 ; Command Processor Reset
const mmu_it1p 0x0816 ; Interrupt Timer One Period
const mmu_it2p 0x0817 ; Interrupt Timer Two Period
const mmu_it3p 0x0818 ; Interrupt Timer Three Period
const mmu_it4p 0x0819 ; Interrupt Timer Four Period

; Status Bit Masks, for use with status register.
const sr_cmdrdy  0x01 ; Command Ready Flag
const sr_entck   0x02 ; Enable Transmit Status
const sr_onl     0x04 ; On Lamp Status
const sr_saa     0x08 ; Sensor Access Active Flag
const sr_txa     0x10 ; Transmit Active Flag
const sr_cpa     0x20 ; Command Processor Active
const sr_rp      0x40 ; Receive Power

; Bit Masks
const bit0_mask  0x01 ; Bit Zero Mask
const bit1_mask  0x02 ; Bit One Mask
const bit2_mask  0x04 ; Bit  Two Mask
const bit3_mask  0x08 ; Bit Three Mask

; Timing Constants.
const min_tcf       75  ; Minimum TCK periods per half RCK period.
const tx_delay      50  ; Wait time for sample transmission, TCK periods.
const sa_delay      70  ; Wait time for sensor access, TCK periods.
const num_vars     255  ; Number of vars to clear at start.
const initial_tcd   15  ; Max possible value of TCK divisor.
const stim_tick     33  ; Stimulus interrupt period.

; Variable Locations
const Scurrent    0x0001 ; Stimulus Current
const Spulse_h    0x0002 ; Pulse Length, HI
const Spulse_l    0x0003 ; Pulse Length, LO
const Sinterval_h 0x0004 ; Interval Length, HI
const Sinterval_l 0x0005 ; Interval Length, LO
const Slength_h   0x0006 ; Stimulus Length, HI
const Slength_l   0x0007 ; Stimulus Length, LO
const Srandomize  0x0008 ; Randomise
const Srun        0x0009 ; Run stimulus
const Sack_key    0x000A ; Acknowledgement key
const cmd_cnt_h   0x000B ; Command Count, HI
const cmd_cnt_l   0x000C ; Command Count, LO
const xmit_T      0x000D ; Transmit Period
const Spcnt1      0x000E ; Stimulus Pulse Counter Byte One
const Spcnt0      0x000F ; Stimulus Pulse Counter Byte Zero
const Sicnt2      0x0010 ; Stimulus Interval Counter Byte Two
const Sicnt1      0x0011 ; Stimulus Interval Counter Byte One
const Sicnt0      0x0012 ; Stimulus Interval Counter Byte Zero
const Sistart     0x0013 ; Stimulus Interval Start
const Sprun       0x0014 ; Stimulus Pulse Run
const xmit_ch     0x0015 ; Transmit Channel
const Rcnt1       0x0016 ; Ramp Counter Byte One
const Rcnt0       0x0017 ; Ramp Counter Byte Zero

; Operation Codes
const op_stop_stim   0 ; 0 operands
const op_start_stim  1 ; 0 operands
const op_xmit        2 ; 2 operands
const op_current     3 ; 1 operand
const op_pulse_h     4 ; 1 operand
const op_pulse_l     5 ; 1 operand
const op_interval_h  6 ; 1 operand
const op_interval_l  7 ; 1 operand
const op_length_h    8 ; 1 operand
const op_length_l    9 ; 1 operand
const op_randomize  10 ; 1 operand
const op_select     11 ; 1 operand
const op_ack        12 ; 1 operand
const op_battery    13 ; 0 operands

; Diagnostic constants.
const ramp_slope   133 ; Change per sample.

; ------------------------------------------------------------
; The CPU reserves two locations 0x0000 for the start of program
; execution, and 0x0003 for interrupt execution. We put jumps at
; both locations. A jump takes exactly three bytes.
start:
jp main
jp interrupt


; ------------------------------------------------------------
; Calibrate the transmit clock frequency. We take the CPU out
; of boost, turn off the transmit clock, and repeat a cycle of
; setting the transmit clock divisor and running the transmit
; clock to measure its frequency. Eventually we get a diviso
; that provides a transmit period in the range 195-215 ns. We
; leave the transmit clock off at the end.
calibrate_tck:
push A           ; Push A and
push B           ; Push B onto stack to save them.
ld A,0x00        ; Clear bit zero of A
ld (mmu_bcc),A   ; Disable CPU Clock Boost
ld (mmu_etc),A   ; Disable Transmit Clock
ld A,initial_tcd ; The initial value of transmit clock divisor
push A           ; Push divisor onto the stack
pop B            ; Store divisor in B
cal_tck_1:
dec B            ; Decrement the divisor.
push B           ; Push divisor onto stack.
pop A            ; Pop divisor into A.
ld (mmu_tcd),A   ; Write divisor to transmit clock generator.
ld A,0x01        ; Set bit zero of A.
ld (mmu_etc),A   ; Enable the transmit clock.
ld A,(mmu_tcf)   ; Read the transmit clock frequency.
sub A,min_tcf    ; Subtract the minimum frequency.
ld A,0x00        ; Clear bit zero of A.
ld (mmu_etc),A   ; Disable Transmit Clock.
jp np,cal_tck_1  ; Try smaller divisor.
pop B            ; Restore B
pop A            ; and A.
ret              ; Return from subroutine.


; ------------------------------------------------------------
; The interrupt routine. Handles data transmission and clock.
; Runs with CPU in boost to save time.
interrupt:

; Push A onto the stack, boost CPU, push F, and generate a diagnosit 
; flag to mark the interrupt.
push A              ; Save A on stack
ld A,0x01           ; Set bit zero to one.
ld (mmu_etc),A      ; Enable the transmit clock, TCK.
ld (mmu_bcc),A      ; Boost the CPU clock to TCK.
push F              ; Save the flags onto the stack.
ld A,(mmu_dfr)      ; Load the diagnostic flag register.
or A,bit0_mask      ; set bit zero and
ld (mmu_dfr),A      ; write to diagnostic flag register.

; Handle the stimulus interrupt, if it exists. We decrement the stimulus
; interval counter and the stimulus pulse counter and set the stimulus 
; interval start and stimulus pulse run flags for the main program to use.
int_stim:
ld A,(mmu_irqb)     ; Read the interrupt request bits
and A,bit1_mask     ; and test bit one,
jp z,int_xmit       ; skip this is not the stimulus interrupt.

ld A,bit1_mask      ; Reset this interrupt
ld (mmu_irst),A     ; with the bit one mask.

ld A,(Sicnt0)       ; Load stimulus count byte zero,
sub A,stim_tick     ; decremement by the stimulus tick,
ld (Sicnt0),A       ; and write to memory.
ld A,(Sicnt1)       ; Load byte one,
sbc A,0             ; continue subtraction with carry,
ld (Sicnt1),A       ; and write to memory.
ld A,(Sicnt2)       ; Load byt two,
sbc A,0             ; continue subtraction with carry,
ld (Sicnt2),A       ; and write to memory.
jp nc,int_Spulse    ; If the result is >=0, jump,
ld A,1              ; but if <0,
ld (Sistart),A      ; set Sistart flag.

int_Spulse:
ld A,(Sprun)        ; Check Stimulus Pulse Run flag
add A,0             ; and if it is set,
jp z,int_xmit       ; jump forwards.
ld A,(Spcnt0)       ; Load Stimulus Pulse Counter Byte Zero,
sub A,stim_tick     ; subtract the stimulus tick,
ld (Spcnt0),A       ; and write to memory.
ld A,(Spcnt1)       ; Load byte one,
sbc A,0             ; continue subtraction with carry,
ld (Spcnt1),A       ; and write to memory.
jp nc,int_xmit      ; If the result is >=0, jump,
ld A,0              ; but if <0,
ld (Sprun),A        ; clear the Sprun flag.

; Handle the transmit interrupt, if it exists. We won't wait for the transmission
; to complete because we are certain to follow our transmission with at least one
; RCK period when we move out of boost.
int_xmit:
ld A,(mmu_irqb)     ; Read the interrupt request bits
and A,bit0_mask     ; and test bit zero,
jp z,int_done       ; skip transmit if not set.

ld A,bit0_mask      ; Reset this interrupt
ld (mmu_irst),A     ; with the bit zero mask.

ld A,rf_lo          ; Set the low radio frequency
ld (mmu_xfc),A      ; for sample transmission
ld A,(xmit_ch)      ; Load A with channel number
ld (mmu_xcn),A      ; and write the transmit channel register.
ld A,(Rcnt0)        ; Load A with ramp counter byte zero.
sub A,ramp_slope    ; Subtract a slope value
ld (mmu_xlb),A      ; and write result to transmit LO register.
ld (Rcnt0),A        ; Write new value to memory.
ld A,(Rcnt1)        ; Load A with ramp counter byte one.
sbc A,0             ; Continue subtraction with carry
ld (mmu_xhb),A      ; and write to transmit HI register.
ld (Rcnt1),A        ; Write new value to memory.
ld (mmu_xcr),A      ; Initiate transmission

; We clear our diagnostic flag, turn off the transmit clock, move out of boost, 
; restore registers and return from interrupt.
int_done:
ld A,(mmu_dfr)      ; Load the diagnostic flag register.
xor A,bit0_mask     ; Clear bit zero and
ld (mmu_dfr),A      ; write to diagnostic flag register.
ld A,0x00           ; Clear bit zero and use it to
ld (mmu_bcc),A      ; move CPU back to slow RCK
ld (mmu_etc),A      ; and stop the transmit clock.
pop F               ; Restore the flags.
pop A               ; Restore A.
rti                 ; Return from interrupt.

; -----------------------------------------------------------
; Decrement the command count. The decrement does not allow
; the count to drop below zero. The routine leaves all registers
; intact.
dec_cmd_cnt:
push F
push A
ld A,(cmd_cnt_l)
sub A,1
ld (cmd_cnt_l),A
ld A,(cmd_cnt_h)
sbc A,0
ld (cmd_cnt_h),A
jp nc,dec_cmd_cnt_nz
ld A,0
ld (cmd_cnt_h),A
ld (cmd_cnt_l),A
dec_cmd_cnt_nz:
pop A
pop F
ret

; ------------------------------------------------------------
; Transmit an acknowledgement.
xmit_ack:
ret

; ------------------------------------------------------------
; Transmit a battery measurement.
xmit_batt:
ret

; ------------------------------------------------------------
; Read out, interpret, and execute comands. Uses the global command
; count variable, stimulus and configuration locations, and starts
; and stops stimuli, transmission, battery measurement and
; acknowledgements.
cmd_execute:

; Disable interrupts, push A onto stack, and boost CPU, then push more
; registers now the CPU is running fast.
seti                ; Disable interrupts.
push A              ; Save A.
ld A,0x01           ; Set bit zero to one.
ld (mmu_etc),A      ; Enable the transmit clock, TCK.
ld (mmu_bcc),A      ; Boost the CPU clock to TCK.
push F
push IX
push H
push L
push D
push E

; Calculate and store the command count in memory. We read the wr_cmd_addr and subtract
; two. We will use the dec_cmd_cnt routine to decrement as we increment through the command
; memory. If the command count is less than zero, we abort.
ld A,(mmu_ccl)
sub A,2
ld (cmd_cnt_l),A
ld A,(mmu_cch)
sbc A,0
ld (cmd_cnt_h),A
jp c,cmd_done

; Load IX with the base of the command memory to start reading bytes.
ld IX,mmu_cmem

; Load the device id into HL and the command's device id into DE.
ld HL,device_id
ld A,(IX)
push A
pop D
inc IX
call dec_cmd_cnt
ld A,(IX)
push A
pop E
inc IX
call dec_cmd_cnt

; Check to see if HL = DE. If so, we'll process this command.
push L
pop B
push E
pop A
sub A,B
jp nz,cmd_no_match
push H
pop B
push D
pop A
sub A,B
jp nz,cmd_no_match
jp cmd_loop_start

; If HL is the wildcard identifier 0xFFFF, we'll process this command.
cmd_no_match:
push E
pop A
sub A,0xFF
jp nz,cmd_done
push D
pop A
sub A,0xFF
jp nz,cmd_done

; Every time we execute this loop, IX should be pointed to the next
; command byte we want to process.
cmd_loop_start:

; Start a pulse on diagnostic flag two.
ld A,(mmu_dfr)
or A,bit2_mask
ld (mmu_dfr),A

; End pulse on diagnostic flag two.
ld A,(mmu_dfr)
xor A,bit2_mask
ld (mmu_dfr),A

; Identify and execute operation codes.

check_stop_stim:
ld A,(IX)
sub A,op_stop_stim
jp nz,check_start_stim
ld A,0
ld (Srun),A
ld (mmu_stc),A
ld A,(mmu_imsk)
xor A,bit1_mask
ld (mmu_imsk),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_start_stim:
ld A,(IX)
sub A,op_start_stim
jp nz,check_xmit
ld A,0x01                ; Set the
ld (Srun),A              ; stimulus ran and
ld (Sistart),A           ; stimulus start flags.
ld A,0                   ; Load zero so we can
ld (Sicnt0),A            ; set the stimulus interval
ld (Sicnt1),A            ; counter to
ld (Sicnt2),A            ; zero.
ld A,stim_tick           ; Set stimulus interrupt period by loading
dec A                    ; the period, subtracting one, and writing
ld (mmu_it2p),A          ; to the timer register.
ld A,(mmu_imsk)          ; Load the interrupt mask and
or A,bit1_mask           ; set bit one to enable the
ld (mmu_imsk),A          ; stimulus interrupt.
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_xmit:
ld A,(IX)
sub A,op_xmit
jp nz,check_current
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (xmit_ch),A
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (xmit_T),A
ld (mmu_it1p),A
ld A,(mmu_imsk)
or A,bit0_mask
ld (mmu_imsk),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_current:
ld A,(IX)
sub A,op_current
jp nz,check_pulse_h
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (Scurrent),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_pulse_h:
ld A,(IX)
sub A,op_pulse_h
jp nz,check_pulse_l
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (Spulse_h),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_pulse_l:
ld A,(IX)
sub A,op_pulse_l
jp nz,check_interval_h
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (Spulse_l),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_interval_h:
ld A,(IX)
sub A,op_interval_h
jp nz,check_interval_l
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (Sinterval_h),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_interval_l:
ld A,(IX)
sub A,op_interval_l
jp nz,check_length_h
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (Sinterval_l),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_length_h:
ld A,(IX)
sub A,op_length_h
jp nz,check_length_l
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (Slength_h),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_length_l:
ld A,(IX)
sub A,op_length_l
jp nz,check_randomize
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (Slength_l),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_randomize:
ld A,(IX)
sub A,op_randomize
jp nz,check_ack
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (Srandomize),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_ack:
ld A,(IX)
sub A,op_ack
jp nz,check_battery
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (Sack_key),A
inc IX
call dec_cmd_cnt
call xmit_ack
jp cmd_loop_end

check_battery:
ld A,(IX)
sub A,op_battery
jp nz,cmd_done
call xmit_batt
inc IX
call dec_cmd_cnt
jp cmd_loop_end

cmd_loop_end:

; Check the number of bytes remaining to be read.
ld A,(cmd_cnt_h)
add A,0
jp nz,cmd_loop_start
ld A,(cmd_cnt_l)
add A,0
jp nz,cmd_loop_start

cmd_done:

; By default, we are going to let the device turn off after we
; finish with this command.
ld A,0x00
ld (mmu_dva),A

; Check Srun. If it's true, we keep the device active.
cmd_check_srun:
ld A,(Srun)
and A,0x01
jp z,cmd_check_srun_done
ld A,0x01
ld (mmu_dva),A
cmd_check_srun_done:

; Check Xmit period. If it's non-zero, we keep the device active.
cmd_check_xon:
ld A,(xmit_T)
add A,0
jp z,cmd_check_xon_done
ld A,0x01
ld (mmu_dva),A
cmd_check_xon_done:

; Reset the command processor.
cmd_rst_cp:
ld (mmu_cpr),A

; Restore most registers, but not A, which we still need.
pop E
pop D
pop L
pop H
pop IX
pop F

; Un-boost the CPU and exit.
ld A,0x00           ; Clear bit zero to zero.
ld (mmu_bcc),A      ; Move CPU back to slow RCK.
ld (mmu_etc),A      ; Stop the transmit clock.
pop A               ; Restore A.
clri                ; Ensble interrupts
ret                 ; Return


; ------------------------------------------------------------
; The main program. We begin by initializing the device, which
; includes initializing the stack pointer, variables, and interrupts.
main:

; Initialize the stack pointer.
ld HL,mmu_sba
ld SP,HL

; Initialize variable locations to zero. This activity also serves
; as a boot-up delay to let the power supply settle before we
; calibrate the transmit clock.
ld IX,mmu_vmem
ld A,num_vars
push A
pop B
ld A,0
main_vclr:
ld (IX),A
inc IX
dec B
jp nz,main_vclr

; Zero some registers.
ld A,0
ld (mmu_stc),A

; Calibrate the transmit clock.
call calibrate_tck

; Reset and disable all interrupts.
ld A,0xFF            ; Load A with ones
ld (mmu_irst),A      ; and reset all interrupts.
ld A,0x00            ; Load zeros
ld (mmu_imsk),A      ; and disable all interrupts.

; The main event loop.
main_loop:

; Set diagnostif flag one.
ld A,(mmu_dfr)      ; Load the diagnostic flag register.
or A,bit1_mask      ; Set bit one and
ld (mmu_dfr),A      ; write to diagnostic flag register.

; Clear diagnostic flag one.
ld A,(mmu_dfr)      ; Load the diagnostic flag register.
xor A,bit1_mask     ; Clear bit one and
ld (mmu_dfr),A      ; write to diagnostic flag register.

; Deal with any pending commands.
ld A,(mmu_sr)       ; Fetch status register.
and A,sr_cmdrdy     ; Check the command ready bit.
jp z,main_nocmd     ; Jump if it's clear,
call cmd_execute    ; execute command if it's set.
main_nocmd:

; Check to see if the stimulus is running, and if we are at the
; start of an interval, at which point we start a pulse.
ld A,(Srun)
and A,0x01
jp z,main_nostim
ld A,(Sistart)
add A,0
jp z,main_nostim

; Disable interrupts so we can boost the CPU and read the
; interval counter without risking the interrupt routine
; changing its value while we are reading.
seti                ; Disable interrupts.
ld A,0x01           ; Set bit zero to one.
ld (mmu_etc),A      ; Enable the transmit clock, TCK.
ld (mmu_bcc),A      ; Boost the CPU clock to TCK.

; Add the stimulus interval to the stimulus interval counter.
; The stimulus interval consists of two bytes, which we add to
; the top two bytes of the counter. Clear the stimulus start
; flag.
ld A,(Sinterval_l)
push A
pop B
ld A,(Sicnt1)
add A,B
ld (Sicnt1),A
ld A,(Sinterval_h)
push A
pop B
ld A,(Sicnt2)
adc A,B
ld (Sicnt2),A
ld A,0x00
ld (Sistart),A

; Clear our diagnostic flag, go back to slow clock and enable 
; interrupts.
ld A,0x00           ; Load a zero and use it to
ld (mmu_bcc),A      ; move CPU out of boost and
ld (mmu_etc),A      ; stop the transmit clock.
clri

; Turn on the lamp and wait for the pulse length to pass, then
; turn the lamp off again.
ld A,(mmu_dfr)      ; Load the diagnostic flag register.
or A,bit3_mask      ; set bit two mask and
ld (mmu_dfr),A      ; write to diagnostic flag register.

ld A,(Scurrent)
ld (mmu_stc),A

ld A,(Spulse_l)
ld (Spcnt0),A
ld A,(Spulse_h)
ld (Spcnt1),A
ld A,1
ld (Sprun),A
await_pulse:
ld A,(Sprun)
add A,0
jp nz,await_pulse

ld A,0
ld (mmu_stc),A

ld A,(mmu_dfr)      ; Load the diagnostic flag register.
xor A,bit3_mask     ; clear bit two mask and
ld (mmu_dfr),A      ; write to diagnostic flag register.

main_nostim:

jp main_loop        ; Repeat the main loop.

; ---------------------------------------------------------------