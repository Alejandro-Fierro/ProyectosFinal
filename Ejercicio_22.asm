.data
.text
.global main
main:
  push{r4,lr}
  ldr r0,.L3
  bl printf
  mov r0,#0
  pop {r4,pc}
.L3:
  .word .LC0
.LC0:
  .ascii "HOLA MUNDO\000"
