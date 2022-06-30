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
const mmu_tpr  0x0811 ; Test Point Register
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

; Timing Constants.
const min_tcf       75  ; Minimum TCK periods per half RCK period.
const tx_delay      50  ; Wait time for sample transmission, TCK periods.
const sa_delay      70  ; Wait time for sensor access, TCK periods.
const num_vars     255  ; Number of vars to clear at start.
const initial_tcd   15  ; Max possible value of TCK divisor.

; Variable Locations
const ramp_ctr    0x0000 ; A counter to generate a ramp.
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
const Xon         0x000D ; Transmit On
const new_imask   0x000E ; Temporary Interrupt Mask
const xmit_period 0x000F ; Transmit period minus one, RCK periods.

; Operation Codes
const op_stop_stim   0 ; 0 operands
const op_start_stim  1 ; 0 operands
const op_config      2 ; 1 operand
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
push A           ; Push A onto the stack to save it
push B           ; Push B onto the stack to save it
ld A,0x00        ; Clear bit zero of A
ld (mmu_bcc),A   ; Disable CPU Clock Boost
ld (mmu_etc),A   ; Disable Transmit Clock
ld A,initial_tcd ; The initial value of transmit clock divisor
push A           ; Push divisor onto the stack
pop B            ; Store divisor in B
cal_tck_1:
dec B            ; Decrement the divisor
push B           ; Push divisor onto stack
pop A            ; Pop divisor into A
ld (mmu_tcd),A   ; Write divisor to transmit clock generator
ld A,0x01        ; Set bit zero of A
ld (mmu_etc),A   ; Enable the transmit clock
ld A,(mmu_tcf)   ; Read the transmit clock frequency
sub A,min_tcf    ; Subtract the minimum frequency
ld A,0x00        ; Clear bit zero of A
ld (mmu_etc),A   ; Disable Transmit Clock
jp np,cal_tck_1  ; Try smaller divisor
pop B            ; Restore B
pop A            ; Restore A
ret              ; Return from subroutine

; ------------------------------------------------------------
; The interrupt routine.
interrupt:
push F              ; Save the flags onto the stack.
push A              ; Save A on stack

ld A,0x01           ; Set bit zero to one.
ld (mmu_etc),A      ; Enable the transmit clock, TCK.
ld (mmu_bcc),A      ; Boost the CPU clock to TCK.

ld A,(mmu_tpr)      ; Load the test point register.
or A,0x01           ; Set bit zero and
ld (mmu_tpr),A      ; write to test point register.

ld A,rf_lo          ; Set the low radio frequency
ld (mmu_xfc),A      ; for sample transmission

ld A,(Xon)          ; Load A with channel number.
ld (mmu_xcn),A      ; Write the channel number.

ld A,(ramp_ctr)     ; Load A with ramp counter.
ld (mmu_xhb),A      ; Write counter to transmit HI byte.
inc A               ; Increment counter.
ld (ramp_ctr),A     ; Write new value to memory.
ld A,0x00           ; Load A with zero.
ld (mmu_xlb),A      ; Write zero to transmit LO byte.

ld (mmu_xcr),A      ; Provokes transmission

ld A,tx_delay       ; Load A with the sample transmission delay
dly A               ; and wait for sample transmission to complete.

ld A,(mmu_tpr)      ; Load the test point register.
and A,0xFE          ; Clear bit zero and
ld (mmu_tpr),A      ; write to test point register.

ld A,0xFF           ; Set all bits to one and use to
ld (mmu_irst),A     ; reset all interrupts.

ld A,0x00           ; Clear bit zero to zero.
ld (mmu_bcc),A      ; Move CPU back to slow RCK.
ld (mmu_etc),A      ; Stop the transmit clock.

pop A               ; Restore A
pop F               ; Restore the flags.
rti

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
; Read out, interpret, and execute comands. Uses the global command
; count variable, stimulus and configuration locations, and starts
; and stops stimuli, transmission, battery measurement and
; acknowledgements.
cmd_execute:

; Push the first registers we use.
push F
push A

; Disable interrupts.
ld A,(mmu_imsk)
ld (new_imask),A
ld A,0x00
ld (mmu_imsk),A

; Boost the CPU
ld A,0x01           ; Set bit zero to one.
ld (mmu_etc),A      ; Enable the transmit clock, TCK.
ld (mmu_bcc),A      ; Boost the CPU clock to TCK.

; Push more registers.
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

; Check the command id. First, load the command identifier in DE and the
; device's own identifier in HL.
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

; Check to see if HL = CD.
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

; Start a pulse on test point two.
ld A,(mmu_tpr)     
or A,0x04         
ld (mmu_tpr),A 

; End pulse on test point 2.
ld A,(mmu_tpr)
and A,0xFB       
ld (mmu_tpr),A 

; Identify and execute operation codes.
check_stop_stim:
ld A,(IX)
sub A,op_stop_stim
jp nz,check_start_stim
ld A,0x00
ld (Srun),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_start_stim:
ld A,(IX)
sub A,op_start_stim
jp nz,check_config
ld A,0x01
ld (Srun),A
inc IX
call dec_cmd_cnt
jp cmd_loop_end

check_config:
ld A,(IX)
sub A,op_config
jp nz,check_current
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (Xon),A
inc IX
call dec_cmd_cnt
ld A,(IX)
ld (xmit_period),A
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
; Transmit acknowledgement.
jp cmd_loop_end

check_battery:
ld A,(IX)
sub A,op_battery
jp nz,cmd_done
; Transmit battery measurement.
inc IX
call dec_cmd_cnt
jp cmd_loop_end

cmd_loop_end:

; Check the number of bytes remaining to be read.
ld A,(cmd_cnt_h)
and A,0xFF
jp nz,cmd_loop_start
ld A,(cmd_cnt_l)
and A,0xFF
jp nz,cmd_loop_start

cmd_done:

; Set device active false by default.
ld A,0x00
ld (mmu_dva),A

; Check Srun.
cmd_check_srun:
ld A,(Srun)
and A,0x01
jp z,cmd_soff
ld A,(Scurrent)
ld (mmu_stc),A
ld A,0x01
ld (mmu_dva),A
jp cmd_check_xon
cmd_soff:
ld A,0
ld (mmu_stc),A
jp cmd_check_xon

; Check Xon
cmd_check_xon:
ld A,(Xon)
and A,0xFF
jp z,cmd_xoff
ld A,(new_imask)
or A,0x01
ld (new_imask),A
ld A,0x01
ld (mmu_dva),A
ld A,(xmit_period)
ld (mmu_it1p),A
jp cmd_rst_cp
cmd_xoff:
ld A,(new_imask)
and A,0xFE
ld (new_imask),A
jp cmd_rst_cp

; Reset the command processor.
cmd_rst_cp:
ld (mmu_cpr),A   

; Restore some registers.
pop E
pop D
pop L
pop H
pop IX

; Un-boost the CPU.
ld A,0x00           ; Clear bit zero to zero.
ld (mmu_bcc),A      ; Move CPU back to slow RCK.
ld (mmu_etc),A      ; Stop the transmit clock.
  
; Set the interrupt mask.
ld A,(new_imask)
ld (mmu_imsk),A

; Restore registers and return.
pop A
pop F
ret


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
vmem_clr:
ld (IX),A
inc IX
dec B
jp nz,vmem_clr

; Calibrate the transmit clock.
call calibrate_tck

; Set the stimulus current.
ld A,(Scurrent)
ld (mmu_stc),A

; Set interrupt timer interval and enable the timer interrupt to implement
; the sample period. The value we want to load into the interrup timer period 
; register is the sample period minus one.
ld A,0xFF            ; Load A with ones
ld (mmu_irst),A      ; and reset all interrupts.
ld A,0x00            ; Load A with zeros
ld (mmu_imsk),A      ; and disable all interrupts.

; The main event loop.
main_loop:

; Start a pulse on test point one.
ld A,(mmu_tpr)      ; Load the test point register.
or A,0x02           ; Set bit one and
ld (mmu_tpr),A      ; write to test point register.

; Stop the pulse on test point one.
ld A,(mmu_tpr)      ; Load the test point register.
and A,0xFD          ; Clear bit one and
ld (mmu_tpr),A      ; write to test point register.

; Deal with any pending commands.
ld A,(mmu_sr)       ; Fetch status register.
and A,sr_cmdrdy     ; Check the command ready bit.
jp z,no_cmd         ; Jump if it's clear,
call cmd_execute    ; execute command if it's set.
no_cmd:

jp main_loop        ; Repeat the main loop.

; --------------------------------------------------------------------