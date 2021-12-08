//@FIERRO VIVIAN LUIS ALEJANDRO
//@19211637
//@EJERCICIO 1 CAPITULO 3
//@LENGUAJES DE INTERFAZ

#include <stdio.h>
// @creacion del vector
int v []= { 8, 10, - 3, 4, - 5, 50, 2, 3 };
// main
void main(void)
{
    int min, i;
    min = v[0];
    for (i=0; i<8; i++){
        if (v[i] < min){
            min = v[i];
            
        }
    }
  // @salida
    printf ("Minimo: %d", min);
}
