/*
// @ FIERRO VIVIAN LUIS ALEJANDRO
// @ 19211637
// @ LENGUAJES DE INTERFAZ
// @ EJERCICIO 2 CAPITULO 4
*/

.set GPBASE, 0x20200000
        .set GPFSEL0, 0x00
        .set GPSET0, 0x1c
        .set GPCLR0, 0x28
.text
        ldr r0, = GPBASE
/* guia de bits            xx999888777666555444333222111000 */
        mov r1, # 0b00001000000000000000000000000000
        str r1, [ r0, # GPFSEL0 ] @Configura GPIO 9
/* guia de bits            10987654321098765432109876543210 */
        mov r1, # 0b00000000000000000000001000000000

bucle : ldr r2, = 7000000
ret1 : subs r2, #1                      @ Bucle no.1
        bne ret1
        str r1, [ r0, # GPSET0 ]        @ Se prende el Led
        ldr r2, = 7000000
ret2 :  subs r2, #1                     @ Bucle no.2
        bne ret2
        str r1, [ r0, # GPCLR0 ]        @ Se prende el Led

        b bucle  @ Se repetira hasta que se cancele la operacion completa
