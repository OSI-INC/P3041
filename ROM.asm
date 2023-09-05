; Implantable Stimulator-Transponder (IST) Program
; ------------------------------------------------

; This code runs in the OSR8V3 microprocessor of the A3041A.

; CPU Address Map Boundary Constants
const mmu_vmem 0x0000 ; Base of Main Program Variable Memory
const mmu_sba  0x0100 ; Stack Base Address
const mmu_umem 0x0200 ; Base of User Program Variable Memory
const mmu_ctrl 0x0400 ; Base of Control Space
const mmu_prog 0x0800 ; Base of user program memory window

; Address Map Locations
const mmu_sdb  0x0400 ; Sensor Data Byte (Write)
const mmu_scr  0x0401 ; Sensor Control Register (Write)
const mmu_irqb 0x0402 ; Interrupt Request Bits (Read)
const mmu_imsk 0x0403 ; Interrupt Mask Bits (Read/Write)
const mmu_irst 0x0404 ; Interrupt Reset Bits (Write)
const mmu_dva  0x0405 ; Device Active (Write)
const mmu_stc  0x0406 ; Stimulus Current (Write)
const mmu_rst  0x0407 ; System Reset (Write)
const mmu_xhb  0x0408 ; Transmit HI Byte (Write)
const mmu_xlb  0x0409 ; Transmit LO Byte (Write)
const mmu_xcn  0x040A ; Transmit Channel Number (Write)
const mmu_xcr  0x040B ; Transmit Control Register (Write)
const mmu_etc  0x040D ; Enable Transmit Clock (Write)
const mmu_tcf  0x040E ; Transmit Clock Frequency (Write)
const mmu_tcd  0x040F ; Transmit Clock Divider (Write)
const mmu_bcc  0x0410 ; Boost CPU Clock (Write)
const mmu_dfr  0x0411 ; Diagnostic Flag Register (Read/Write)
const mmu_sr   0x0412 ; Status Register (Read)
const mmu_cmp  0x0413 ; Command Memory Portal (Read)
const mmu_cpr  0x0415 ; Command Processor Reset (Write)
const mmu_i1ph 0x0416 ; Interrupt Timer One Period HI (Write)
const mmu_i1pl 0x0417 ; Interrupt Timer One Period LO (Write)
const mmu_i2ph 0x0418 ; Interrupt Timer Two Period HI (Write)
const mmu_i2pl 0x0419 ; Interrupt Timer Two Period LO (Write)
const mmu_i3p  0x041A ; Interrupt Timer Three Period (Write)
const mmu_i4p  0x041B ; Interrupt Timer Four Period (Write)
const mmu_idh  0x041C ; Device ID HI (Read)
const mmu_idl  0x041D ; Device ID LO (Read)

; Status Bit Masks, for use with status register
const sr_cmdrdy  0x01 ; Command Ready Flag
const sr_entck   0x02 ; Transmit Clock Enabled
const sr_saa     0x04 ; Sensor Access Active Flag
const sr_txa     0x08 ; Transmit Active Flag
const sr_cpa     0x10 ; Command Processor Active
const sr_boost   0x20 ; Boost Flag
const sr_cme     0x40 ; Command Memory Empty

; Transmit Control Masks, for use with tansmit control register
const tx_txi     0x01 ; Assert transmit initiate
const tx_txwp    0x02 ; Assert transmit warm-up
const id_at         0 ; Auxiliary type for identification
const ack_at        1 ; Auxiliary type for acknowledgements
const batt_at       2 ; Auxiliary type for battery measurement

; Bit Masks
const bit0_mask  0x01 ; Bit Zero Mask
const bit1_mask  0x02 ; Bit One Mask
const bit2_mask  0x04 ; Bit Two Mask
const bit3_mask  0x08 ; Bit Three Mask
const bit7_mask  0x80 ; Bit Seven Mask
const bit0_clr   0xFE ; Bit Zero Clear
const bit1_clr   0xFD ; Bit One Clear
const bit2_clr   0xFB ; Bit Two Clear
const bit3_clr   0xF7 ; Bit Three Clear

; Timing Constants.
const min_tcf       72  ; Minimum TCK periods per half RCK period
const tx_delay      50  ; Wait time for sample transmission, TCK periods
const sa_delay      30  ; Wait time for sensor access, TCK periods
const wp_delay     255  ; Warm-up delay for auxiliary messages
const num_vars      64  ; Number of vars to clear at start
const initial_tcd   15  ; Max possible value of TCK divisor
const uprog_tick   165  ; User program interrupt period
const id_delay      33  ; To pad id delay to 50 TCK periods
const min_int_p     25  ; Minimum transmit period
const ext_reset    250  ; Extinguish counter reset value.

; Stimulus Control Variables
const Scurrent    0x0000 ; Stimulus Current
const Spulse1     0x0001 ; Pulse Length, HI
const Spulse0     0x0002 ; Pulse Length, LO
const Sint1       0x0003 ; Interval Length, HI
const Sint0       0x0004 ; Interval Length, LO
const Slen1       0x0005 ; Stimulus Length, HI
const Slen0       0x0006 ; Stimulus Length, LO
const Srand       0x0007 ; Random pulse timing
const Srun        0x0008 ; Run stimulus
const Spulse      0x0009 ; Stimulus Pulse Run Flag
const Sack_key    0x000A ; Acknowledgement key
const Sdly1       0x000B ; Stimulus Delay Byte One
const Sdly0       0x000C ; Stimulus Delay Byte Zero
const Sdelay      0x000D ; Stimulus Delay Run Flag
const Smaxdly1    0x000E ; Max Delay, HI
const Smaxdly0    0x000F ; Max Delay, LO

; Command Decode Variables
const ccmdb       0x0016 ; Copy of Command Byte

; Extinguish Variables
const extcnt1     0x0019 ; Counter Byte One
const extcnt0     0x001A ; Counter Byte Zero

; Random Number Variabls
const rand_1      0x0020 ; Random Number Byte One
const rand_0      0x0021 ; Random Number Byte Zero

; User Program Control Variables
const UPrun       0x0022 ; Running
const UPinit      0x0023 ; Initialize

; Transmission Control Variables
const xmit_p      0x0028 ; Transmit Period
const xmit_pcn    0x0029 ; Primary Channel Number

; User Program Constants
const prog_usr    0x0800 ; User program location
const ret_code      0x0A ; Return from subrouting instruction

; Operation Codes
const op_stop_stim   0 ; 0 operands
const op_start_stim  1 ; 8 operands
const op_xmit        2 ; 1 operand
const op_ack         3 ; 1 operand
const op_battery     4 ; 0 operand
const op_identify    5 ; 0 operands
const op_setpcn      6 ; 1 operand
const op_ldprog      7 ; 1 operand, variable data
const op_enprog      8 ; 1 operand
const op_rstpp       9 ; 0 operands

; Synchronization.
const synch_nostim  32 ; 
const synch_stim    96 ;

; Random Number Generator.
const rand_taps   0xB4 ; Determines which taps to XOR.

; ------------------------------------------------------------
; The CPU reserves two locations 0x0000 for the start of program
; execution, and 0x0003 for interrupt execution. We put jumps at
; both locations. A jump takes exactly three bytes.

start:

jp main
jp interrupt

; ---------------------------------------------------------------
; Eight-bit multiplier. Load two eight-bit operands into B and C
; and the sixteen-bit result will be returned in B (HI) and C (LO). 
; Takes 200 to 300 clock cycles depending upon the operand C, an 
; average of 250 (50 us at 5 MHz or 7.6 ms at 32.768 kHz).

multiply:

; Save registers and flags on the stack.

push F
push A
push D
push H
push L

; We use D to count down from eight to zero.

ld A,8
push A
pop D

; Clear HL.

ld A,0
push A
pop H
push A
pop L

; Shift C left and check the bit that comes out the top end, now in our
; carry bit. If carry is not set, jump forward to shift HL.

mult_start:
push C
pop A
sla A
push A
pop C
jp nc,mult_check_done

; Carry bit set means we add B to HL.

push L
pop A
add A,B
push A
pop L
push H
pop A
adc A,0
push A
pop H

; Decrement D. If zero, we have added eight times and
; there is no need to shift HL again, we are done.

mult_check_done:
dec D
jp z,mult_done

; Shift HL to the left, filling in bit zero with a zero. We are
; going repeat our addition loop.

push L
pop A
sla A
push A
pop L
push H
pop A
rl A
push A
pop H
jp mult_start

; Multiplication is complete and the result is in HL. Move the 
; result to BC so that this routine affects only BC.

mult_done:
push H
pop B
push L
pop C

; Recover registers and flags.

pop L
pop H
pop D
pop A
pop F
ret

; ------------------------------------------------------------
; The random number generator updates rand_0 and rand_1 with a 
; sixteen-bit linear feedback shift register.

rand:

push F
push A

ld A,(rand_1)     ; Rotate rand_1 to the right,
srl A             ; filling top bit with zero,
ld (rand_1),A     ; and placing bottom bit in carry.
ld A,(rand_0)     ; Rotate rand_0 to the right,
rr A              ; filling top bit with carry,
ld (rand_0),A     ; and placing bottom bit in carry.

ld A,(rand_1)     ; Load A with rand_1 again.
jp nc,rand_tz     ; If carry is set, perform the XOR
xor A,rand_taps   ; operation on tap bits and
ld (rand_1),A     ; save to memory.
rand_tz:

pop A
pop F
ret

; ------------------------------------------------------------
; Generate a number that we can use to delay a pulse within a
; stimulus interval. The minimum delay is zero and the maximum
; is the interval length minus the pulse length. We write the 
; delay bytes to Sdly0 and Sdly1.
;

rand_dly:

push F
push A
push B
push C
push D
push E
push H
push L

; Copy the stimulus interval length into the scratch pad
; and subtract the pulse length. The result is our maximum 
; delay for randomized pulses. If this value is negative, 
; set to zero.

ld A,(Spulse0)       ; Load pulse length byte
push A               ; zero into B
pop B                ; and interval length
ld A,(Sint0)         ; byte zero into A.
sub A,B              ; Subtract to get
ld (Smaxdly0),A      ; max delay byte zero.
ld A,(Spulse1)       ; Load pulse length
push A               ; byte one into 
pop B                ; B and
ld A,(Sint1)         ; interval lengt byte one
sbc A,B              ; into A and subtract with
ld (Smaxdly1),A      ; carry to get max delay byte one.
jp nc,rand_delay_ds  ; If not negative, move on.
ld A,0               ; Otherwise
ld (Sdly1),A         ; set delay to 
ld (Sdly0),A         ; zero.
jp rand_delay_done
rand_delay_ds:

; Get a random number and place it in D. This is one of our
; product terms. The other is the maximum delay for randomized
; pulses, which is currently in the scratch pad.

call rand           ; Update the random number.
ld A,(rand_0)       ; Load the random number
push A              ; and move to B
pop B               ; for multiplication.
push A              ; Also store in D for 
pop D               ; later.

; Multiply the maximum delay by the random number and store the
; top two bytes of the twenty-four bit product in memory.

ld A,(Smaxdly0)     ; Load LO byte zero of max delay
push A              ; and place in C for
pop C               ; multiplication.
call multiply       ; Let BC := B * C.
push B              ; Store HI byte in E for later.
pop E               ; Won't be using LO byte.
push D              ; Bring back our random
pop B               ; number.
ld A,(Smaxdly1)     ; Put byte one of max delay
push A              ; in C
pop C               ; for multiplication
call multiply       ; Let BC := B * C.
push B              ; The HI byte is our random
pop A               ; delay byte one, so store
ld (Sdly1),A        ; now in timer byte one.
push C              ; Move LO byte from     
pop B               ; C to B. 
push E              ; Move HI byte of first product
pop A               ; from E to A.
add A,B             ; Add bytes, never generates carry.
ld (Sdly0),A        ; Put delay byte zero in timer.

rand_delay_done:

pop L
pop H
pop E
pop D
pop C
pop B
pop A 
pop F
ret                


; ------------------------------------------------------------
; Calibrate the transmit clock frequency. We take the CPU out
; of boost, turn off the transmit clock, and repeat a cycle of
; setting the transmit clock divisor and running the transmit
; clock to measure its frequency. Eventually we get a diviso
; that provides a transmit period in the range 195-215 ns. We
; leave the transmit clock off at the end.

calibrate_tck:

; Push flags and registers, disable interrupts.

push F
push A           
push B           

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

; Pop registers and return.

pop B           
pop A           
pop F
ret             

; ------------------------------------------------------------
; The interrupt handler. Assumes that it interrupts a program
; running off the slow clock. Boosts as quickly as possible to
; fast clock, executes, then restores the clock. We handle the
; user program interrupt, then stimulus interrupt, and finally
; the transmit interrupt. By this means, when the interrupts
; are coincident, the user program can affect the stimulus and
; the stimulus can affect the transmission. The synchronizing
; signal, for example, will reflect the most recent state of
; the stimulus.

interrupt:

; Push A onto the stack, boost CPU, push F. We push A before
; F because we want to move into boost as quickly as possible.
; Each instruction at 33 kHz takes 150 times longer than at 5 MHz.

push A              ; Save A on stack
ld A,0x01           ; Set bit zero to one.
ld (mmu_etc),A      ; Enable the transmit clock, TCK.
ld (mmu_bcc),A      ; Boost the CPU clock to TCK.
push F              ; Save the flags onto the stack.

; Drive TP1 high.
ld A,(mmu_dfr)      ; Load the diagnostic flag register.
or A,bit0_mask      ; set bit zero and
ld (mmu_dfr),A      ; write to diagnostic flag register.

; Push all the registers, even if we don't use them in the interrupt
; code. We want to protect the calling process from the user program.
push B
push C
push D
push E
push H
push L
push IX
push IY

; Handle the user program interrupt, in which we call the user program
; and allow it to execute and return. Because we just pushed all the
; registers, the user program can do what it likes with all the registers
; and flags, with the exception of the interrupt flag, which it must
; handle with care. Right now, the interrupt flag is set, and interrupts
; are disabled. Clearing the interrupt flag could cause the user program
; to be interrupted to execute itself in a recursion that overflows the
; stack.

int_uprog:

ld A,(mmu_irqb)     ; Read the interrupt request bits
and A,bit2_mask     ; and test bit one,
jp z,int_uprog_done ; skip if uprog interrupt.

ld A,bit2_mask      ; Reset this interrupt
ld (mmu_irst),A     ; with the bit two mask.

call prog_usr       ; Call the user program.

int_uprog_done:

; Handle the stimulus interval interrupt. We decrement the stimulus
; interval counter. We start a delay or a pulse using interrupt timer
; two. We set and clear the stimulus delay, pulse, and run flags. The
; first interval of a stimulus should start immediately after reception
; of command, so the initial value of the interrupt period is one. We
; correct this value in the handler.

int_sii:

ld A,(mmu_irqb)     ; Read the interrupt request bits
and A,bit0_mask     ; and test bit zero.
jp z,int_sii_done   ; If not set, skip this interrupt.

ld A,(Srun)         ; Check the Srun flag. 
add A,0             ; If it's been cleared,
jp z,int_sii_done   ; we do nothing.

ld A,(Sint1)        ; Set the stimulus interval delay to
ld (mmu_i1ph),A     ; the value specified by the most 
ld A,(Sint0)        ; recent command, or adapt to value written
ld (mmu_i1pl),A     ; by user program to interval length locations.

ld A,(Slen0)        ; Load LO byte of stimulus length counter.
sub A,1             ; decrement
ld (Slen0),A        ; save,
ld A,(Slen1)        ; Load HI byte,
sbc A,0             ; apply carry bit
ld (Slen1),A        ; and save.
jp nc,int_sii_do    ; If >=0, start a delay or a pulse.

ld A,0              ; If <0, 
ld (mmu_stc),A      ; turn off the stimulus current.
ld (Srun),A         ; Clear the Srun,
ld (Spulse),A       ; Spulse,
ld (Sdelay),A       ; and Sdelay flags.
ld (mmu_i1ph),A     ; Disable the interrupt
ld (mmu_i1pl),A     ; timer.
ld A,(mmu_imsk)     ; Mask the the 
and A,bit0_clr      ; timer
ld (mmu_imsk),A     ; interrupt.
jp int_sii_rst

int_sii_do:
ld A,(Srand)        ; Check the random flag
add A,0             ; and if zero, start pulse
jp z,int_sii_p      ; otherwise start delay.

int_sii_r:
call rand_dly       ; Generate random delay.
ld A,(Sdly0)        ; If the delay
add A,0             ; is zero
jp nz,int_sii_rd    ; we skip the
ld A,(Sdly1)        ; delay and
add A,0             ; start our pulse
jp z,int_sii_p      ; immediately.

int_sii_rd:
ld A,(Sdly0)        ; Copy random
ld (mmu_i2pl),A     ; delay to the
ld A,(Sdly1)        ; Timer Two
ld (mmu_i2ph),A     ; period.
ld A,1              ; Set the
ld (Sdelay),A       ; delay flag.
ld A,0              ; Clear the
ld (Spulse),A       ; pulse flag.
ld (mmu_stc),A      ; Turn off stimulu
ld A,(mmu_imsk)     ; Unmask
or A,bit1_mask      ; Timer Two
ld (mmu_imsk),A     ; interrupt.
ld A,bit1_mask      ; Reset
ld (mmu_irst),A     ; Timer Two.
jp int_sii_rst

int_sii_p:
ld A,1              ; Set the
ld (Spulse),A       ; pulse flag.
ld A,0              ; Clear the delay
ld (Sdelay),A       ; flag.
ld A,(Scurrent)     ; Load stimulus current and
ld (mmu_stc),A      ; turn on the stimulus.
ld A,(Spulse1)      ; Set interrupt timer 
ld (mmu_i2ph),A     ; two period to the
ld A,(Spulse0)      ; pulse
ld (mmu_i2pl),A     ; length.
ld A,(mmu_imsk)     ; Unmask 
or A,bit1_mask      ; Timer Two
ld (mmu_imsk),A     ; interrupt.
ld A,bit1_mask      ; Reset
ld (mmu_irst),A     ; Timer Two
jp int_sii_rst

int_sii_rst:
ld A,bit0_mask      ; Reset interrupt timer one, which clears
ld (mmu_irst),A     ; its interrupt bit and reloads its timer.

int_sii_done:

; Handle the delay and pulse interrupt, which is generated by 
; Timer Two. The Sdelay flag tells us if the interrupt marks
; the end of a delay or the end of a pulse. We either start
; a pulse or end a pulse.

int_sdp:

ld A,(mmu_irqb)     ; Read the interrupt request bits
and A,bit1_mask     ; and test bit one,
jp z,int_sdp_done   ; skip if not delay and pulse interrupt.

ld A,(Sdelay)       ; Check delay flag
add A,0             ; and if set, end delay and start pulse
jp z,int_sdp_pulse  ; otherwise end pulse.

int_sdp_delay:
ld A,(Scurrent)     ; Turn on the 
ld (mmu_stc),A      ; stimulus current.
ld A,(Spulse1)      ; Load timer two
ld (mmu_i2ph),A     ; with the
ld A,(Spulse0)      ; pulse 
ld (mmu_i2pl),A     ; length.
ld A,0              ; Clear the
ld (Sdelay),A       ; delay flag.
ld A,1              ; Set the
ld (Spulse),A       ; pulse flag.
jp int_sdp_rst

int_sdp_pulse:
ld A,0              ; Stop the
ld (mmu_stc),A      ; stimulus pulse.
ld (Spulse),A       ; Clear pulse flag.
ld (Sdelay),A       ; And the delay flag.
ld (mmu_i2ph),A     ; Disable the timer two
ld (mmu_i2pl),A     ; interrupt.
ld A,(mmu_imsk)     ; Mask 
and A,bit1_clr      ; interrupt
ld (mmu_imsk),A     ; two.

int_sdp_rst:
ld A,bit1_mask      ; Reset Timer Two, which loads the
ld (mmu_irst),A     ; the current period into its counter.

int_sdp_done:

; Handle the transmit interrupt, if it exists. We transmit a synchronizing signal.
; We won't wait for the transmission to complete because we are certain to follow 
; our transmission with at least one RCK period when we move out of boost. 

int_xmit:

ld A,(mmu_irqb)     ; Read the interrupt request bits
and A,bit3_mask     ; and test bit three,
jp z,int_xmit_done  ; skip transmit if not set.

ld A,bit3_mask      ; Reset this interrupt
ld (mmu_irst),A     ; with the bit three mask.

ld A,(xmit_pcn)     ; Load A with primary channel number
ld (mmu_xcn),A      ; and write the transmit channel register.

; If a not Srun, we will transmit synch_nostim. If Srun but not Spulse,
; we transmit synch_stim. If Srun we transmit synch_stim + 8*Scurrent.
; Regardless, the lower byte we transmit will be zero.

ld A,0              ; Load A with zero
ld (mmu_xlb),A      ; write to transmit LO register.

ld A,(Srun)         ; Load A with Srun
add A,0             ; check value
jp nz,int_xmit_stim ; jump if set.

ld A,synch_nostim   ; Load A with synch_nostim and
ld (mmu_xhb),A      ; write to transmit HI register.
jp int_xmit_rdy   

int_xmit_stim:
ld A,(Spulse)        ; Load A with Spulse
add A,0              ; check value, jump if set.
jp nz,int_xmit_pulse

ld A,synch_stim     ; Load A with synch_stim and
ld (mmu_xhb),A      ; write to transmit HI register.
jp int_xmit_rdy   

int_xmit_pulse:
ld A,(Scurrent)     ; Load A with Scurrent and
sla A               ; shift left
sla A               ; three times to
sla A               ; multiply by eight
add A,synch_stim    ; then add synch_stim.
ld (mmu_xhb),A      ; Write to transmit HI register.

int_xmit_rdy:

ld A,tx_txi         ; Load transmit initiate bit
ld (mmu_xcr),A      ; and write to transmit control register.

int_xmit_done:

; Turn off the transmit clock, move out of boost, restore registers and return 
; from interrupt.

int_done:
pop IY
pop IX
pop L
pop H
pop E
pop D
pop C
pop B
ld A,(mmu_dfr)      ; Load the diagnostic flag register.
and A,bit0_clr      ; Clear bit zero and
ld (mmu_dfr),A      ; write to diagnostic flag register.
ld A,0x00           ; Clear bit zero and use it to
ld (mmu_bcc),A      ; move CPU back to slow RCK
ld (mmu_etc),A      ; and stop the transmit clock.
pop F               ; Restore the flags.
pop A               ; Restore A.
rti                 ; Return from interrupt.


; ------------------------------------------------------------
; Transmit an acknowledgement. We have to warm up the VCO before
; the transmit, or its frequency will be wrong. The routine assumes
; we are running in boost with the interrupts disabled.

xmit_ack:

push F
push A

; Prepare the VCO for message transmission.

ld A,tx_txwp        ; Turn on the VCO by writing the 
ld (mmu_xcr),A      ; warm-up bit to the transmit control register.
ld A,wp_delay       ; Wait for a number of TCK periods while 
dly A               ; the VCO warms up.
ld A,0              ; Turn off the VCO and
ld (mmu_xcr),A      ; let the battery recover
ld A,wp_delay       ; before we 
dly A               ; transmit.

; Prepare the auxiliary message: auxiliary channel number, top four bits of
; primary channel number, auxiliary type, and acknowledgement key.

ld A,(xmit_pcn)     ; Load A with primary channel number
or A,0x0F           ; set lower four bits to one
ld (mmu_xcn),A      ; and write the transmit channel register.
ld A,(Sack_key)     ; Load the acknowledgement key
ld (mmu_xlb),A      ; and write to transmit LO register.
ld A,(xmit_pcn)     ; Load A with primary channel number again
sla A               ; Shift A 
sla A               ; left
sla A               ; four
sla A               ; times.
or A,ack_at         ; Set the auxiliary type to acknowledgement.
ld (mmu_xhb),A      ; Write to transmit HI register.

; Transmit the message.

ld A,tx_txi         ; Initiate transmission with another write to
ld (mmu_xcr),A      ; control register, which also turns off the warm-up.
ld A,tx_delay       ; Wait for a number of TCK periods while 
dly A               ; the transmit completes.

pop A
pop F

ret

; ------------------------------------------------------------
; Transmit a battery measurement. We assume interrupts are disabled and
; the CPU is boosted. The battery  measurement is inversely proportional 
; to the battery voltage. We have: VBAT = 1.2 V * 256 / batt_meas. We 
; must access twice to acquire and convert.

xmit_batt:

push F
push A

; Prepare the VCO for a transmission.

ld A,tx_txwp        ; Turn on the VCO by writing the 
ld (mmu_xcr),A      ; warm-up bit to the transmit control register.
ld A,wp_delay       ; Wait for a number of TCK periods while 
dly A               ; the VCO warms up.
ld A,0              ; Turn off the VCO and
ld (mmu_xcr),A      ; let the battery recover
ld A,wp_delay       ; before we 
dly A               ; transmit.

; Load the most recent battery measurement from memory and use as
; the auxiliary message data byte. 

ld (mmu_scr),A      ; Initiate conversion of battery voltage.
ld A,sa_delay       ; Load sensor delay,
dly A               ; Wait,
ld (mmu_scr),A      ; convert again,
ld A,sa_delay       ; wait
dly A               ; again
ld A,(mmu_sdb)      ; and get battery measurement.
ld (mmu_xlb),A      ; Write the to transmit LO register.

; Prepare the auxiliary message: auxiliary channel number, top four bits of
; primary channel number, and auxiliary type.

ld A,(xmit_pcn)     ; Load A with primary channel number
or A,0x0F           ; set lower four bits to one
ld (mmu_xcn),A      ; and write the transmit channel register.
ld A,(xmit_pcn)     ; Load A with primary channel number again
sla A               ; Shift A 
sla A               ; left
sla A               ; four
sla A               ; times.
or A,batt_at        ; The battery type code for auxiliary message.
ld (mmu_xhb),A      ; Write to transmit HI register.

; Transit the message and wait until complete.

ld A,tx_txi         ; Initiate transmission and turn off warm-up
ld (mmu_xcr),A      ; with another write to control register.
ld A,tx_delay       ; Wait for a number of TCK periods while 
dly A               ; the transmit completes.

pop A
pop F

ret

; ------------------------------------------------------------
; Transmit an identification message. We assume interrupts are 
; disabled and the CPU is running on the boost clock. 

xmit_identify:

push F
push A
push H
push L

; Delay for 50 clock cycles multiplied by numeric value of 
; the device id. By this means, each device transmits its
; identifying message at a different time, up to 656 ms from
; the time of the command.

ld A,(mmu_idh)
push A
pop H
ld A,(mmu_idl)
push A
pop L
identify_delay:
ld A,id_delay
dly A
push L
pop A
sub A,1
push A
pop L
push H
pop A
sbc A,0
push A
pop H
jp nc,identify_delay

; Prepare the VCO for a transmission.

ld A,tx_txwp        ; Turn on the VCO by writing the 
ld (mmu_xcr),A      ; warm-up bit to the transmit control register.
ld A,wp_delay       ; Wait for a number of TCK periods while 
dly A               ; the VCO warms up.
ld A,0              ; Turn off the VCO and
ld (mmu_xcr),A      ; let the battery recover
ld A,wp_delay       ; before we 
dly A               ; transmit.

; Load the HI byte of the device identifier into the transmit LO byte.

ld A,(mmu_idh)      ; Load HI byte into A and
ld (mmu_xlb),A      ; write to transmit LO register.

; Prepare the auiliary message. We use the LO byte of the device identifier
; as the primary channel number for an auxiliary message. 

ld A,(mmu_idl)      ; Load LO byte into A,
or A,0x0F           ; set lower four bits to one and
ld (mmu_xcn),A      ; write to the transmit channel register.
ld A,(mmu_idl)      ; Load LO byte into A again,
sla A               ; shift A 
sla A               ; left
sla A               ; four
sla A               ; times.
or A,id_at          ; The identify type code for auxiliary message.
ld (mmu_xhb),A      ; Write to transmit HI register.

; Transit the message and wait until complete.

ld A,tx_txi         ; Initiate transmission and turn off warmup
ld (mmu_xcr),A      ; with another write to control register.
ld A,tx_delay       ; Wait for a number of TCK periods while 
dly A               ; the transmit completes.

pop L
pop H
pop A
pop F

ret

; ------------------------------------------------------------
; Read a byte out of the command memory portal and store in a
; variable location, as well as returning it in A. With gcb_dsp
; set, we produce a serial display of the byte on diagnostic flag 
; one. We assume interrupts are disabled and the CPU is running 
; on the boost clock. 

get_cmd_byte:

const gcb_dsp 0     ; Set to one for debugging.
const gcb_dly 33    ; Bit period for display.
const gcb_nb 11     ; Total number of bits minus start bit.

push F

ld A,(mmu_cmp)      ; Read from command FIFO portal. 
ld (ccmdb),A        ; Store byte in memory.
ld A,gcb_dsp        ; Check if we should display the byte.
and A,bit0_mask     ; If not, jump to end
jp z,gcb_done       ; of routine.

push B              ; Push the two registers we are 
push C              ; going to use.

ld A,(mmu_dfr)      ; Display the start bit.    
or A,bit1_mask      ; and 
ld (mmu_dfr),A      ; wait for
ld A,gcb_dly        ; proscribed delay.
dly A

ld A,gcb_nb         ; We are going to 
push A              ; transmit this number of bits
pop B               ; plus a stop bit.

ld A,(ccmdb)        ; Make a copy of the command
push A              ; byte in 
pop C               ; register C.

gcb_loop:
and A,bit7_mask     ; Check the most significant bit
jp nz,gcb_hi        ; in the remaining command bits.

ld A,(mmu_dfr)      ; Transmit a zero and wait.
and A,bit1_clr
ld (mmu_dfr),A
ld A,gcb_dly
dly A
jp gcb_sl

gcb_hi:      
ld A,(mmu_dfr)       ; Transmit a one and wait.
or A,bit1_mask
ld (mmu_dfr),A
ld A,gcb_dly
dly A

gcb_sl:
push C               ; Get the remaining bits
pop A                ; and shift them to
sla A                ; the left, bringing a zero
push A               ; in for the least significant
pop C                ; bit, copy into C.
dec B                ; Check bit counter and 
jp nz,gcb_loop       ; repeat if still not zero.

pop C                ; Recover C and
pop B                ; B registers.

gcb_done:
ld A,(ccmdb)         ; Load the command byte into A.

pop F
ret

; ------------------------------------------------------------
; Read out, interpret, and execute comands. Uses the global command
; count variable, stimulus and configuration locations, and starts
; and stops stimuli, transmission, battery measurement and
; acknowledgements. The routine assumes that the user program pointer
; is stored in IY upon entry, and will pass IY back after modification.

cmd_execute:

; Push the flags onto the stack and disable interrupts. Allowing interrupts
; while we are configuring a stimulus or a transmission is more challenging
; than simply turning them off and making sure everything is set up properly
; before returning from this routine and popping the flags off the stack 
; again, restoring the interrupt flag (I) to its prior state. 

push F              ; Push flags.
seti                ; Disable interrupts.

; Now we push A, turn on the transmit clock and go into boost, then push all 
; the remaining registers we plan to use.

push A              ; Save A.
ld A,0x01           ; Set bit zero to one.
ld (mmu_etc),A      ; Enable the transmit clock, TCK.
ld (mmu_bcc),A      ; Boost the CPU clock to TCK.
push B
push C
push D
push E
push H
push L
push IX

; Check the empty flag and abort if it is set. We don't want to try
; to process an empty command. If the empty flag is not set, we
; expect there to be at least two bytes in the command, for the 
; target identifier.

ld A,(mmu_sr)
and A,sr_cme 
jp nz,cmd_done

; Load the device id into HL and the command target id into DE.

ld A,(mmu_idh)
push A
pop H
ld A,(mmu_idl)
push A
pop L
call get_cmd_byte
push A
pop D
call get_cmd_byte
push A
pop E

; Check to see if the device id and target id are equal. If so, we will
; process the command. If not, we will check if the target id is the
; wildcard.

push L
pop B
push E
pop A
sub A,B
jp nz,cmd_wildcard_check
push H
pop B
push D
pop A
sub A,B
jp nz,cmd_wildcard_check
jp cmd_id_matched

; See if the target id is the wildcard. If so, we will process the command.
; Otherwise we will abort. 

cmd_wildcard_check:
push E
pop A
sub A,0xFF
jp nz,cmd_done
push D
pop A
sub A,0xFF
jp nz,cmd_done

; The device and target idendifiers match, so we are going to process this
; command.

cmd_id_matched:

; Reset the extinguish counter.

ld A,255           ; Load the extinguish counter with
ld (extcnt1),A     ; the maximum sixteen-bit
ld (extcnt0),A     ; integer.

; The start of our command byte decoding loop. 

cmd_loop:

; Check the command memory empty flag, and if set, we are done.

ld A,(mmu_sr)
and A,sr_cme 
jp nz,cmd_done

; The command memory is a first-in first-out buffer, so we read a 
; byte and store it in memory and in A with get_cmd_byte. After that, 
; we can get the byte by reading it from location ccmdb (copy of 
; command byte).

call get_cmd_byte

; The stimulus stop instruction.

check_stop_stim:
ld A,(ccmdb)
sub A,op_stop_stim
jp nz,check_stop_stim_end
ld A,0                ; Clear
ld (Srun),A           ; run flag
ld (mmu_stc),A        ; stop stimulus
ld (mmu_i1ph),A       ; and disable the
ld (mmu_i1pl),A       ; timer one interrupt.
ld A,(mmu_imsk)       ; Mask
and A,bit0_clr        ; interrupt one
ld (mmu_imsk),A       ; to stop stimulus.
jp cmd_loop
check_stop_stim_end:

; The stimulus start instruction.

check_start_stim:
ld A,(ccmdb)
sub A,op_start_stim
jp nz,check_start_stim_end
call get_cmd_byte    ; Read stimulus current.
ld (Scurrent),A      ; and store in memory.
call get_cmd_byte    ; Read pulse length byte one
ld (Spulse1),A       ; and store to memory.
call get_cmd_byte    ; Read pulse length byte zero
ld (Spulse0),A       ; and store in memory.
call get_cmd_byte    ; Read interval length byte one,
ld (Sint1),A         ; store in memory.
call get_cmd_byte    ; Read interval length byte zero,
ld (Sint0),A         ; store in memory,
call get_cmd_byte    ; Read stimulus length byte one,
ld (Slen1),A         ; and write to memory.
call get_cmd_byte    ; Read stimulus length byte zero,
ld (Slen0),A         ; and write to memory.
call get_cmd_byte    ; Read randomization byte
ld (Srand),A         ; and write to memory.
ld A,0x01            ; Set the
ld (Srun),A          ; stimulus run flag.
ld A,0               ; Clear the 
ld (Spulse),A        ; pulse and
ld (Sdelay),A        ; delay flags.  
ld (mmu_i1ph),A      ; Set the Timer One period to
ld A,1               ; one, so that our first interval
ld (mmu_i1pl),A      ; will begin within a millisecond.
ld A,bit0_mask       ; Reset Timer One interrupt to load
ld (mmu_irst),A      ; our value of one into its counter.
ld A,(mmu_imsk)      ; Load the interrupt mask and
or A,bit0_mask       ; set bit zero to enable
ld (mmu_imsk),A      ; interrupt timer one.
jp cmd_loop
check_start_stim_end:

; Start data transmission.

check_xmit:
ld A,(ccmdb)
sub A,op_xmit
jp nz,check_xmit_end
call get_cmd_byte    ; Read xmit period minus one. 
sub A,min_int_p      ; Subtract the minimum period.
jp c,xmit_disable    ; If result negative, disable xmit.
ld A,(ccmdb)         ; Load the period again,
ld (xmit_p),A        ; save to memory and write to
ld (mmu_i4p),A       ; interrupt timer four period.
ld A,(mmu_imsk)      ; Enable interrupt timer four
or A,bit3_mask       ; with bit three of interrupt
ld (mmu_imsk),A      ; mask.
jp cmd_loop      
xmit_disable:      
ld A,0               ; Set the xmit period to zero
ld (xmit_p),A        ; in memory, which acts as a flag.
ld (mmu_i4p),A       ; Disable timer interrupt.
ld A,(mmu_imsk)      ; Mask timer interrupt
and A,bit3_clr       ; with bit three of
ld (mmu_imsk),A      ; interrupt mask.
jp cmd_loop
check_xmit_end:

; Acknowledgement request instruction. We read the acknowledgement
; key that will serve as a verification code and call the acknowledgement
; transmit routine, which will take about fifty microseconds.

check_ack:
ld A,(ccmdb)
sub A,op_ack
jp nz,check_ack_end
call get_cmd_byte         
ld (Sack_key),A      
call xmit_ack        
jp cmd_loop
check_ack_end:

; Battery voltage measurement request instruction. This instruction
; takes no parameters. We call the battery measurement routine
; immediately, which will take about fifty microseconds.

check_battery:
ld A,(ccmdb)
sub A,op_battery
jp nz,check_battery_end
call xmit_batt       
jp cmd_loop
check_battery_end:

; Identification request instruction. This instruction takes no
; operands. We call the identification transmission routine, which
; will occupy the CPU for up to 650 ms before transmitting a single
; message that gives the device id to any listeners.

check_identify:
ld A,(ccmdb)
sub A,op_identify
jp nz,check_identify_end
call xmit_identify    
jp cmd_loop
check_identify_end:

; Set the primary channel number for acknowledgements, battery
; measurements and synchronizing signal transmission. We read
; the primary channel number and write to memory.

check_setpcn:
ld A,(ccmdb)
sub A,op_setpcn
jp nz,check_setpcn_end
call get_cmd_byte           
ld (xmit_pcn),A      
jp cmd_loop   
check_setpcn_end:

; Receive user code and load into user program memory. Instruction
; takes one operand: the number of program bytes that follow the
; operand. The bytes will be loaded into the location pointed to 
; by index register IY. If one or more bytes are loaded by this
; instruction into the user program memory, we set the user program
; run flag so as to keep the device powered up to receive more
; user program bytes in future commands. But we disable the user
; program interrupt to make sure that we don't execute a partially-
; loaded program.
  
check_ldprog:
ld A,(ccmdb)
sub A,op_ldprog
jp nz,check_ldprog_end
call get_cmd_byte  ; Get the number of program bytes.
add A,0            ; If number of bytes is zero,
jp z,cmd_loop      ; we are done with this instruction.
push A             ; Otherwise, use B to count the
pop B              ; program bytes.
load_prog:        
call get_cmd_byte  ; Read instruction byte from command memory
ld (IY),A          ; and write to program memory.
inc IY             ; Increment memory pointer.
dec B              ; Decrement B, and if not zero, 
jp nz,load_prog    ; read another byte.
ld A,0x01          ; Otherwise, we set the
ld (UPrun),A       ; user program flag to keep the device awake.
ld (UPinit),A      ; Clear the user program initialization flag.
ld A,0             ; Load interrupt three timer with zero
ld (mmu_i3p),A     ; to disable the interrupt.
ld A,(mmu_imsk)    ; Mask interrupt number
and A,bit2_clr     ; three with bit two in the 
ld (mmu_imsk),A    ; interrupt mask.
jp cmd_loop        ; We are done with this instruction.
check_ldprog_end:

; Turn on and off execution of user code during transmit interrupt.
; Instruction takes one operand: zero for disable, one for enable.
; If enable, start the user program interrupt, otherwise disable.

check_enprog:
ld A,(ccmdb)
sub A,op_enprog
jp nz,check_enprog_end
call get_cmd_byte       ; Read the enable value
and A,bit0_mask         ; and check.
jp z,cmd_disable_prog
ld A,0x01               ; If true,
ld (UPrun),A            ; set user program run flag
ld (UPinit),A           ; and user program initialization flag.
ld A,uprog_tick         ; Set interrupt timer three to 
ld (mmu_i3p),A          ; the uprog_tick period
ld A,(mmu_imsk)         ; and enable interrupt timer
or A,bit2_mask          ; three with bit two of 
ld (mmu_imsk),A         ; the interrupt mask.
jp cmd_loop
cmd_disable_prog:    
ld A,0x00               ; If false,
ld (UPrun),A            ; clear run flag
ld (UPinit),A           ; and initialization flag.
ld A,0                  ; Load interrupt three timer with zero
ld (mmu_i3p),A          ; to disable the interrupt.
ld A,(mmu_imsk)         ; Mask interrupt timer three
and A,bit2_clr          ; with bit
ld (mmu_imsk),A         ; two of interrupt mask
jp cmd_loop
check_enprog_end:

; Reset the user program pointer to point to the first byte in user
; program memory.

check_rstpp:
ld A,(ccmdb)
sub A,op_rstpp
jp nz,check_rstpp_end
ld IY,mmu_prog          ; Load IY with the base of
jp cmd_loop             ; user program memory.
check_rstpp_end:

; If we get here, the opcode is not valid, so abandon the command.

jp cmd_done     

; Now that we are done with command processing, we turn
; on device power. It's up to the main loop to turn
; the device off. We reset the command processor too.

cmd_done:
ld A,0x01
ld (mmu_dva),A
ld (mmu_cpr),A

; Restore most registers, but not IY, which contains the user program pointer.

pop IX
pop L
pop H
pop E
pop D
pop C
pop B

; Un-boost the CPU and exit.

ld A,0x00           
ld (mmu_bcc),A      
ld (mmu_etc),A      
pop A               
pop F               
ret                 

; ------------------------------------------------------------
; The main program. We begin by initializing the device, which
; includes initializing the stack pointer, variables, and interrupts.
; The main program uses IY to store the user program pointer.

main:

; Initialize the stack pointer.
ld HL,mmu_sba
ld SP,HL

; Initialize registers.
ld A,0
push A
pop B
push A
pop C
push A
pop D
push A
pop E
push A
pop H
push A
pop L

; Initialize variable locations to zero. This activity also serves
; as a boot-up delay to let the power supply settle before we
; calibrate the transmit clock. We are clearing all flags.

ld IX,mmu_vmem
ld A,num_vars
push A
pop B
ld A,0
main_var_init_loop:
ld (IX),A
inc IX
dec B
jp nz,main_var_init_loop

; Initialize certain variables to values other than zero.

ld A,(mmu_idl)     ; Set the primary channel number to the
ld (xmit_pcn),A    ; LO byte of the device identifier.
ld (rand_0),A      ; Seed the random number generator
ld A,(mmu_idh)     ; with the LO and HI bytes of the
ld (rand_1),A      ; device identifier.
ld A,ext_reset     ; Load the extinguish counter with
ld (extcnt1),A     ; the reset value,
ld (extcnt0),A     ; ready to decrement.

; Configure control space registers.

ld A,0             ; Make sure the stimulus
ld (mmu_stc),A     ; current is zero.
ld (mmu_dfr),A     ; Set the diagnostic flags to zero.
ld (mmu_i1ph),A    ; Set all the 
ld (mmu_i1pl),A    ; interrupt timer
ld (mmu_i2ph),A    ; periods to zero,
ld (mmu_i2pl),A    ; which disables
ld (mmu_i3p),A     ; their interrupt
ld (mmu_i4p),A     ; generation.
ld (mmu_imsk),A    ; Mask all interrupts.
ld A,0xFF          ; Load A with ones
ld (mmu_irst),A    ; and reset all interrupts.

; Configure user programming.

ld IY,mmu_prog     ; The main loop uses IY for the user program pointer.
ld A,ret_code      ; Put a return opcode at first byte
ld (IY),A          ; in user program, in case of enable.

; Calibrate the transmit clock.

call calibrate_tck

; The main event loop.

main_loop:

; Deal with any pending commands.

ld A,(mmu_sr)       ; Fetch status register.
and A,sr_cmdrdy     ; Check the command ready bit.
jp z,main_nocmd     ; Jump if it's clear,
call cmd_execute    ; execute command if it's set.
main_nocmd:

; If the stimulus flag is set, reset extinguish counter and call main loop
; again. 

ld A,(Srun)
add A,0
jp z,main_ext_dec
ld A,ext_reset
ld (extcnt0),A
ld (extcnt1),A
jp main_loop

; Decrement the extinguish counter. When negative, we will switch off. The extinguish 
; counter will be decremented by the extinguish tick in every main loop. The cmd_execute 
; routine resets the counter whenever it receives a command directed at this device.

main_ext_dec:
ld A,(extcnt0)
sub A,1
ld (extcnt0),A
ld A,(extcnt1)
sbc A,0
ld (extcnt1),A
jp c,main_extinguish

; Check to see if we are transmitting or running a user program, and if so we will
; call the main loop again.

ld A,(xmit_p)
add A,0
jp nz,main_loop
ld A,(UPrun)
add A,0
jp nz,main_loop

; Switch off. We could wait here, but jumping back to the start
; of the loop makes the code more robust: if something goes wrong
; with the turn-off, the device is still watching for commands.

main_extinguish:
ld A,0
ld (mmu_dva),A
jp main_loop

; ---------------------------------------------------------------
