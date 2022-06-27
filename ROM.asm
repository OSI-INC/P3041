; Implantable Stimulator-Transponder (IST) Program
; ------------------------------------------------

; This code runs in the OSR8V3 microprocessor of the A3041A.

; V1: Provides a ramp value for transmission at 128 SPS. Sets
; TP1 is set during the transmit interrupt. TP2 is set during the
; main loop. RCK is connected directly to the reference clock. The
; TCK pin is connected to FHI.

; Calibration Constants
const tx_frequency      5  ; Transmit frequency calibration
const device_id        55  ; Will be used as the first channel number.
const xmit_period     255  ; Transmit period minus one, RCK periods.

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
const boot_delay   255  ; Boot delay, RCK periods.
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

; Operation Codes
const op_stop_stim   0;
const op_start_stim  1;
const op_config      2;
const op_current     3;
const op_pulse_h     4;
const op_pulse_l     5;
const op_interval_h  6;
const op_interval_l  7;
const op_length_h    8;
const op_length_l    9;
const op_randomize  10;
const op_select     11;
const op_ack        12;
const op_battery    13;


; ------------------------------------------------------------

; The CPU reserves two locations 0x0000 for the start of program
; execution, and 0x0003 for interrupt execution. We put jumps at
; both locations. A jump takes exactly three bytes.
start: 
jp initialize
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

ld A,tx_frequency   ; Set the low radio frequency
ld (mmu_xfc),A      ; for sample transmission

ld A,device_id      ; Load A with channel number.
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

; ------------------------------------------------------------
; Initialize the device. 
initialize:

; Initialize the stack pointer. 
ld HL,mmu_sba
ld SP,HL

; Wait for a while. The power supplies must settle after entering
; standby mode.
ld A,boot_delay  ; Load A with boot delay
dly A            ; and wait this number of RCK periods.

; Calibrate the transmit clock.
call calibrate_tck

; Set the ramp counter to zero.
ld A,0x00
ld (ramp_ctr),A

; Set interrupt timer interval and enable the timer interrupt to implement
; the sample period. The value we want to load into the interrup timer period 
; register is the sample period minus one.
ld A,0xFF            ; Load A with ones
ld (mmu_irst),A      ; and reset all interrupts.
ld A,xmit_period     ; Load A with transmit period minus one
ld (mmu_it1p),A      ; and write to timer one period.
ld A,0x01            ; Set bit zero of A to one and use
ld (mmu_imsk),A      ; to enable timer one interrupt.


; ------------------------------------------------------------

; The main program loops. The interrupt will be running 
; in the background. The main loop checks for commands.
main:

ld A,(mmu_tpr)      ; Load the test point register.
or A,0x02           ; Set bit one and
ld (mmu_tpr),A      ; write to test point register.

ld A,(mmu_tpr)      ; Load the test point register.
and A,0xFD          ; Clear bit one and
ld (mmu_tpr),A      ; write to test point register.

ld A,(mmu_sr)       ; Fetch status register.
and A,sr_cmdrdy     ; Check the command ready bit.
jp z,no_cmd         ; Jump if it's clear.

; Read out, interpret, and execute comands.

; Load HL with the cmd_wr_addr minus three, which is the command 
; address at which we know we have completed the read.
ld A,(mmu_ccl)
sub A,3
push A
pop L
ld A,(mmu_cch)
jp p,no_dec_h
sub A,1
no_dec_h:
push A
pop H

; Load IX with the base of the command memory to start reading bytes.
ld IX,mmu_cmem

; Every time we execute this loop, IX should be pointed to the next 
; command byte we want to process.
cmd_loop_start:

; Make a pulse on test point two.
ld A,(mmu_tpr)     
or A,0x04         
ld (mmu_tpr),A 
and A,0xFB       
ld (mmu_tpr),A 

; Identify and execute operation codes.
check_stop_stim:
ld A,(IX)
sub A,op_stop_stim
jp nz,check_start_stim
; waiting to put code here.
inc IX
jp cmd_loop_end

check_start_stim:
ld A,(IX)
sub A,op_start_stim
jp nz,check_config
; waiting to put code here.
inc IX
jp cmd_loop_end

check_config:
ld A,(IX)
sub A,op_config
jp nz,check_current
inc IX
ld A,(IX)
; we now have the configuration byte
inc IX
jp cmd_loop_end

check_current:
ld A,(IX)
sub A,op_current
jp nz,check_pulse_h
inc IX
ld A,(IX)
ld (Scurrent),A
inc IX
jp cmd_loop_end

check_pulse_h:
ld A,(IX)
sub A,op_pulse_h
jp nz,check_pulse_l
inc IX
ld A,(IX)
ld (Spulse_h),A
inc IX
jp cmd_loop_end

check_pulse_l:
ld A,(IX)
sub A,op_pulse_l
jp nz,check_interval_h
inc IX
ld A,(IX)
ld (Spulse_l),A
inc IX
jp cmd_loop_end

check_interval_h:
ld A,(IX)
sub A,op_interval_h
jp nz,check_interval_l
inc IX
ld A,(IX)
ld (Sinterval_h),A
inc IX
jp cmd_loop_end

check_interval_l:
ld A,(IX)
sub A,op_interval_l
jp nz,check_length_h
inc IX
ld A,(IX)
ld (Sinterval_l),A
inc IX
jp cmd_loop_end

check_length_h:
ld A,(IX)
sub A,op_length_h
jp nz,check_length_l
inc IX
ld A,(IX)
ld (Slength_h),A
inc IX
jp cmd_loop_end

check_length_l:
ld A,(IX)
sub A,op_length_l
jp nz,check_randomize
inc IX
ld A,(IX)
ld (Slength_l),A
inc IX
jp cmd_loop_end

check_randomize:
ld A,(IX)
sub A,op_randomize
jp nz,check_select
inc IX
ld A,(IX)
ld (Srandomize),A
inc IX
jp cmd_loop_end

check_select:
ld A,(IX)
sub A,op_select
jp nz,check_ack
inc IX
ld A,(IX)
and A,0xFF
inc IX
jp z,cmd_loop_end
sub A,device_id
jp z,cmd_loop_end
jp cmd_done

check_ack:
ld A,(IX)
sub A,op_ack
jp nz,check_battery
inc IX
ld A,(IX)
ld (Sack_key),A
inc IX
jp cmd_loop_end

check_battery:
ld A,(IX)
sub A,op_battery
jp nz,cmd_done
; To be written
inc IX
jp cmd_loop_end

cmd_loop_end:
; Check the index register.
push IX
pop C
pop B
push H
pop A
sub A,B
jp np,cmd_done
jp nz,cmd_loop_start
push L
pop A
push C
pop B
sub A,B
jp nz,cmd_loop_start

; Reset the command processor.
cmd_done:
ld (mmu_cpr),A     

; And continue.
no_cmd:

ld A,(Scurrent)
ld (mmu_stc),A

jp main             ; Repeat the main loop.


; ------------------------------------------------------------
