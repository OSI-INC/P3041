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
const sample_period     0  ; Sample period in units of RCK periods, use 0 for 256.

; Address Map Constants
const mmu_bmb  0x0800 ; Sensor Data HI Byte 
const mmu_scr  0x0801 ; Sensor Control Register
const mmu_irqb 0x0802 ; Interrupt Request Bits
const mmu_imsk 0x0803 ; Interrupt Mask Bits
const mmu_irst 0x0804 ; Interrupt Reset Bits
const mmu_iset 0x0805 ; Interrupt Set Bits
const mmu_itp  0x0806 ; Interrupt Timer Period 
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
const mmu_crf  0x0812 ; Command Ready Flag
const mmu_cch  0x0813 ; Command Count HI
const mmu_ccl  0x0814 ; Command Count LO
const mmu_cpr  0x0815 ; Command Processor Reset
const mmu_dva  0x0816 ; Device Active 
const mmu_onl  0x0817 ; On Lamp
const mmu_sph  0x0819 ; Initial Stack Pointer HI Byte
const mmu_spl  0x0820 ; Initial Stack Pointer LO Byte

; Timing Constants.
const min_tcf       75  ; Minimum TCK periods per half RCK period.
const tx_delay      50  ; Wait time for sample transmission, TCK periods.
const sa_delay      70  ; Wait time for sensor access, TCK periods.
const initial_tcd   15  ; Max possible value of TCK divisor.
const boot_delay    10  ; Boot delay in multiples of 7.8 ms.

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
; Calibrate the transmit clock frequency. Will leave the
; transmit clock disabled and cpu boost turned off.
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

ld A,(mmu_tpr)      ; Load the test point register.
or A,0x01           ; Set bit zero and
ld (mmu_tpr),A      ; write to test point register.

ld A,0x01           ; Set bit zero to one.
ld (mmu_etc),A      ; Enable the transmit clock, TCK.
ld (mmu_bcc),A      ; Boost the CPU clock to TCK.

ld A,device_id      ; Load A with channel number.
ld (mmu_xcn),A      ; Write the channel number.
ld A,(ramp_ctr)     ; Load A with ramp counter.
ld (mmu_xhb),A      ; Write counter to transmit HI byte.
inc A               ; Increment counter.
ld (ramp_ctr),A     ; Write new value to memory.
ld A,0x00           ; Load A with zero.
ld (mmu_xlb),A      ; Write zero to transmit LO byte.
ld (mmu_xcr),A      ; Any write to transmit control register.
ld A,tx_delay       ; Load A with the sample transmission delay.
dly A               ; and wait for sample transmission to complete.

ld A,0x00           ; Clear bit zero to zero.
ld (mmu_bcc),A      ; Move CPU back to slow RCK.
ld (mmu_etc),A      ; Stop the transmit clock.

ld A,(mmu_tpr)      ; Load the test point register.
and A,0xFE          ; Clear bit zero and
ld (mmu_tpr),A      ; write to test point register.

ld A,0xFF           ; Set all bits to one and use to
ld (mmu_irst),A     ; reset all interrupts.

pop A               ; Restore A
pop F               ; Restore the flags.
rti

; ------------------------------------------------------------
; Initialize the device. 
initialize:

; Initialize the stack pointer. We read the correct initial stack
; pointer value from memory, where it is hard-coded into the 
; firmware along with a maximum stack height.
ld A,(mmu_sph)
push A
pop H
ld A,(mmu_spl)
push A
pop L 
ld SP,HL

; Wait for a while. The power supplies must settle after entering
; standby mode, and the ring oscillator frequency is sensitive to
; the power supply voltage. We must let the gyroscope and accelerometer
; settle down also.
ld A,boot_delay  ; We want start_delay x 256 
push A           ; cycles of RCK = 32.768 kHz
pop B            ; before proceeding with execution.
pwr_up_lp:
ld A,0xFF        ; Load A with 255 to give the maximum eight bit
dly A            ; count, and wait this number of RCK periods.
dec B            ; Decremnent B until zero.
jp nz,pwr_up_lp

; Calibrate the transmit clock.
call calibrate_tck

; Set the low radio frequency for sample transmission
ld A,tx_frequency
ld (mmu_xfc),A

; Set the ramp counter to zero.
ld A,0x00
ld (ramp_ctr),A

; Set interrupt timer interval and enable the timer interrupt to implement
; the sample period. The value we want to load into the interrup timer period 
; register is the sample period minus one, because the interrupt timer counts
; the value down to zero. So we load A with sample_period, then decrement. If
; sample_period is zero (0x00), the value we write is 255 (0xFF).
ld A,0xFF            ; Load A with ones
ld (mmu_irst),A      ; and reset all interrupts.
ld A,sample_period   ; Load A with the sample period,
dec A                ; and decrement to get the value
ld (mmu_itp),A       ; we write to timer period register.
ld A,0x01            ; Set bit zero of A to one and use
ld (mmu_imsk),A      ; to enable the timer interrupt.

; ------------------------------------------------------------

; The main program loops. The interrupt will be running 
; in the background, and they do all the work.
main:

ld A,(mmu_tpr)      ; Load the test point register.
or A,0x02           ; Set bit one and
ld (mmu_tpr),A      ; write to test point register.
and A,0xFD          ; Clear bit one and
ld (mmu_tpr),A      ; write to test point register.
ld A,0xFF           ; Delay for 255 clock cycles.
dly A               ; so as to make the test pulse rare.
jp main             ; Repeat the main loop.


; ------------------------------------------------------------
