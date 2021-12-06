.data
.text
.global main
main:
  push {r4,r5,r6,r7,r8,lr}
  ldr r4, .L11
  ldr r5, .L11+4
  ldr r6, .L11+8
  ldr r7, .L11+12
.L6:
  ands r3,r4,#3
  moveq r1,r4
  move1 r0,r5
  beq .L10
  cmp r3, #2
  moveq r1,r4
  moveq r0,r7
  moveq r1,r4
  moveq r0,r6
.L10:
  bl printf
  ldr r3,.L11+16
  add r4,r4,#1
  cmp r4,r3
  bne .L6
  mov r0,#0
  pop {r4,r5,r6,r7,r8,pc}
.L11:
  .word 1950
  .word .LC0
  .word .LC1
  .word .LC2
  .word 2015
.LC0:
  .ascii "EN %d HUBO OLIMPIADAS\012\000"
.LC1:
  .ascii "EN %d HUBO MUNDIAL DE FUTBOL\012\000"
.LC2:
  .ascii "EN %d NO PASO NADA\012\000"
