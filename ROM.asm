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
const mmu_onl  0x0806 ; On Lamp
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
const ramp_ctr   0x0000 ; A counter to generate a ramp.

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

ld A,(mmu_sr)       ; Fetch status register.
and A,sr_cmdrdy     ; Check the command ready bit.
jp z,no_cmd         ; Jump if it's clear.

; Read out, interpret, and execute comands.

; Load HL with the command write address minus three. This will
; be our command byte count.
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

; Load IX with the base of the command memory.
ld IX,mmu_cmem

cmd_loop:

ld A,(mmu_tpr)     
or A,0x04         
ld (mmu_tpr),A 

ld A,(IX)
inc IX

ld A,(mmu_tpr)     
and A,0xFB       
ld (mmu_tpr),A 

push L
pop A
and A,0xFF
jp nz,cmd_inc_1
push H
pop A
and A,0xFF
jp nz,cmd_inc_1
jp cmd_done

cmd_inc_1:
push L
pop A
and A,0xFF
jp nz,cmd_inc_2
dec H
cmd_inc_2:
dec L
jp cmd_loop

cmd_done:
ld (mmu_cpr),A     

no_cmd:
ld A,(mmu_tpr)
and A,0xFD          
ld (mmu_tpr),A      

jp main             ; Repeat the main loop.


; ------------------------------------------------------------
