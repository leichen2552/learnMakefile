hello.out : fun.o main.o
	gcc -o hello.out fun.o main.o

fun.o : fun.c
	gcc -o fun.o -c fun.c

main.o : main.c
	gcc -o main.o -c main.c

.PHONY : clean rebuild all

rebuild : clean all

all : hello.out

clean :
	rm -f *.o *.out
