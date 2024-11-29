;https://github.com/dbuchwald/cc65-tools/blob/main/tutorial/02_blink/blink.s
;exact copy, all credit to dbunchwald
  .code

reset:
  lda #$ff
  sta $6002

  lda #$50
  sta $6000

loop:
  ror
  sta $6000

  jmp loop

  .segment "VECTORS"
  .word $0000
  .word reset
  .word $0000
  