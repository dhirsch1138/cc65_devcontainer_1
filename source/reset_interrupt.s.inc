;The reset references
;the segment "VECTORS" is defined in firmware.cfg
;see how we can define addresses in the firmware and cc65 just knows where to put stuff? Neat!
.segment "VECTORS"
  .word $0000
  .word reset
  .word $0000