a: .asciz "%d es IMPAR\12"
b: .asciz "%d es PAR\12"
.text
.global main
main:
  push{r4,lr}
  mov r4,#0
.L2:
  mov r1,r4
  ands r5,r4,#1
  cmp r,#0
  bne else
  ldr r0, =b
  add r4,r4,#1
  bl printf
  cmp r4,#10
  bne .L2
  pop{r4,pc}
else:
  ldr r0, =a
  bl printf
  add r4,r4,#1
  cmp r4, #10
  bne .L2
  pop{r4,pc}
