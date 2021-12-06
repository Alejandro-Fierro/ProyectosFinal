tipo6: tipo6.o
  g++ -nostartfiles -o tipo6 tipo6.o
  
tipo6.o: tipo6.s
  as -g -o tipo6.o tipo6.s
  
clean:
  rn tipo6 tipo6.o
