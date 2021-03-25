
TARGET := hello-world.out
CC := g++


$(TARGET) : fun.o main.o
	$(CC) -o $(TARGET) fun.o main.o

fun.o : fun.c
	$(CC) -o fun.o -c fun.c

main.o : main.c
	$(CC) -o main.o -c main.c

.PHONY : clean rebuild all

rebuild : clean all

all : $(TARGET)

clean :
	rm -f *.o *.out
