;PURPOSE - Writes the reset pointer (and future interrupts?) at segment "VECTORS"
;
;The reset references the segment "VECTORS" is defined in firmware.cfg
;see how we can define addresses in the firmware.cfg and cc65 just knows where to put stuff? Neat!
.segment "VECTORS"
  .word $0000
  ;we are INCLUDING this file, instead of assembling it as its own object, so it knows about reference 'reset' in blink.s
  .word reset
  .word $0000