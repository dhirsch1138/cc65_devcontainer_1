;PURPOSE - This is the code which will written to ROM at $0000 (but will be referenced by the Ben Eater 6502 as $8000)
;
;Include the reset file for the vector
  .include "reset_interrupt.s.inc"
;Include the via file (we can use the .inc file as a sort of header, defining the imports there and keeping this source clean)
  .include "via.s.inc" 
 
 ;This is shorthand for .segment "CODE"
 ;This references the "CODE" segment defined in firmware.cfg file.
 ; * "CODE" is loaded into MEMORY block "ROM"
 ; * MEMORY block "ROM" has a defined start point of $8000
 ;What does this mean? This is a dynamic shorthand for:
 ;  .org $8000
  .code

reset:
  ;We want to set all pins on port B of the via adapter to output. Load that state to the accumulator (a)
  ;$ff = %11111111 = 255
  lda #$ff
  ;Now we want to write the value in the accumulator (a) to Data Direction Register for via port B (DDRB)
  ;
  ;We have access to the exported values VIA_DDRB & VIA_PORTB because:
  ;* It is imported in the included via.s.inc
  ;* It is exported (and defined) in via.s file
  ;* The via.s file knows what address to use as the starting VIA address because it is defined in firmware.cfg
  ;
  ;See the chain? We can define memory segments in the firmware (with the static values) and have the the code just 
  ;reference that instead of storing those constants. This makes the code so much more future proof, if the segments
  ;ever need to move we just update the firmware.cfg
  sta VIA_DDRB

;Turn tell the via to set pins 1 and 3 (index started at 0) to true
;$50 = %01010000 = 80
  lda #$50
  sta VIA_PORTB

loop:
  ;rotate the value in the accumulator (a) right
  ;so 01010000 will become 00101000
  ror
  ;write the rotated accumulator (a) to via port B
  sta VIA_PORTB
  ;jump back to the loop reference. We are now looping forever and ever and ever
  jmp loop


  