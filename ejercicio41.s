/*
// @FIERRO VIVIAN LUIS ALEJANDRO
// @19211637
// @LENGUAJES DE INTERFAZ
// @EJERCICIO 1 CAPITULO 4
*/


.set GPBASE, 0x20200000
        .set GPFSEL0, 0x00
        .set GPSET0, 0x1c
        .set GPCLR0, 0x28
.text
        ldr r0, = GPBASE
/* guia de bits            xx999888777666555444333222111000 */
        mov r1, # 0b00001000000000000000000000000000
        str r1, [ r0, # GPFSEL0 ]   @ configuracion para salida
/* guia de bits            10987654321098765432109876543210 */
bucle : mov r1, # 0b00000000000000000000001000000000
        str r1, [ r0, # GPSET0 ]    @ Encender
        mov r1, # 0b00000000000000000000001000000000
        str r1, [ r0, # GPCLR0 ]    @ Apagado
        b bucle
