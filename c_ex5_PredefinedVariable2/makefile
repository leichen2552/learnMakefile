
TARGET := hello-world.out
CC := gcc


$(TARGET) : fun.o main.o
	$(CC) -o $@ $^

fun.o : fun.c
	$(CC) -o $@ -c $^

main.o : main.c
	$(CC) -o $@ -c $^

.PHONY : clean rebuild all

rebuild : clean all

all : $(TARGET)

clean :
	rm -f *.o *.out
