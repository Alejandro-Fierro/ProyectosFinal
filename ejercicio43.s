/* 
// @ FIERRO VIVIAN LUIS ALEJANDRO
// @ 19211738
// @ LENGUAJES DE INTERFAZ
// @ EJERCICIO 3 CAPITULO 4
*/

       .set GPBASE, 0x20200000
        .set GPFSEL0, 0x00
        .set GPSET0, 0x1c
        .set GPCLR0, 0x28
        .set STBASE, 0x20003000
        .set STCLO, 0x04
.text
        ldr r0, = GPBASE
/* guia de bits            xx999888777666555444333222111000 */
        mov r1, # 0b00001000000000000000000000000000
        str r1, [ r0, # GPFSEL0 ] @ Configuramos GPIO 9
/* guia de bits            10987654321098765432109876543210 */
        mov r1, # 0b00000000000000000000001000000000
        ldr r2, = STBASE

bucle : bl espera               @ Sale a rutina llamada espera
        str r1, [ r0, # GPSET0 ]
        bl espera               @ Sale a rutina llamada espera
        str r1, [ r0, # GPCLR0 ]
        b bucle

/* @ rutina de espera medio segundo */
espera: ldr r3, [ r2, # STCLO ] @ r3 contador, lo leemos
        ldr r4, = 500000
        add r4, r3              @ r4 = r3 + 500000 (medio millon)
ret1:   ldr r3, [ r2, # STCLO ]
        cmp r3, r4              @ Leer CLO hasta alcanzar el valor que se encuentre en R4
        bne ret1                
        bx lr
