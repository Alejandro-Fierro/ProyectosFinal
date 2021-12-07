condicion: condicion.o
  ld -g -o condicion condicion.o
condicion.o:condicion.s
  as -g -o  condicion.o condicion.s
  
clean:
  rm condicion condicion.o
