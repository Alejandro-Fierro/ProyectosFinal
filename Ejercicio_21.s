.data
.text
.global main
main:
  push{r4,r5,r6,lr}
  mov r4, #100
  ldr r5,L5
.L2:
  mov r1,r4
  mov r0,r5
  bl printf
  sub r4,r4 #2
  bne .L2
  mov r0,r4
  pop {r4,r5,r6,pc}
.L6:
  .align 2
.L5:
  .word .LC0
.LC0:
  .ascii "%d \012\000"
