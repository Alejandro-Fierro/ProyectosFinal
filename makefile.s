condicion: condicion.o
  gcc -o condicion condicion.o
condicion.s:condicion.s
  as -o condicion.o condicion.s
clean:
  rm condicion condicion.o
