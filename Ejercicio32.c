//@FIERRO VIVIAN LUIS ALEJANDRO
//@19211637
//@EJERCICIO 2 CAPITULO 3
//@CONSEGUIR LA MEDIA ARITMETICA
//@LENGUAJES DE INTERFAZ

#include <stdio.h>

int v []= { 10, 10, 10};
int v1[]= {4, 5, 6};
int v2[]= {10, 20, 40};
int v3[]= {15, 30, 45};
int v4[]= {-1, -10, 18};

void main(void)
{
  //llammos a metodo
    media(v);
    media(v1);
    media(v2);
    media(v3);
    media(v4);
    
}
//metodo que calcula e imprime la media
void media(int * v)
{
    int med;
    med = 0;
    med = (v[0] + v[1] + v[2]) / 3;
    
    printf ("Media Aritmetica: %d \n", med);
}
