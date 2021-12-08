//@FIERRO VIVIAN LUIS ALEJANDRO
//@19211637
//@EJERCICIO 3 CAPITULO 3
//@ORDENAMIENTO DE UN VECTOR
//@LENGUAJES DE INTERFAZ

#include <stdio.h>
//vector
int vector []= {80 , 51 , 84 , -25 , 10, 79 , 1, -5};

//metodo de orden de datos
void ordena (int *v , int len)
{
    int x , y , aux ;
    for (x= 1; x < len ; x++)
    for (y= 0; y < len -x ; y++)
    if( v [y] > v [y + 1])
    aux = v[y],
    v[y]= v[y + 1],
    v[ y +1]= aux ;
}

void main (void)
{
    int i;
  //metodo de ordenar (vector, no de datos)
    ordena ( vector , 8);
    for (i= 0; i<8; i++)
    printf ( " %d\n " , vector [ i ]);
}
