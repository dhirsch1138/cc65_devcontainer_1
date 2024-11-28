  .code

reset:
  lda #$ff
  sta $6002

  lda #$50
  sta $6000

  .include "loop.s.inc"

  .segment "VECTORS"
  .word $0000
  .word reset
  .word $0000