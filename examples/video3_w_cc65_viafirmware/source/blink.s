
  .include "reset_interrupt.s.inc"
  .include "via_imports.s.inc" 
  
  .code

reset:
  lda #$ff
  sta VIA_DDRB

  lda #$50
  sta VIA_PORTB

loop:
  ror
  sta VIA_PORTB

  jmp loop


  