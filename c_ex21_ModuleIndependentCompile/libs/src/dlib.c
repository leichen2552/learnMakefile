#include <stdio.h>
#include "dlib.h"


char* dlib_name()
{
	printf("This is dlib.so\n");
}

int add(int a, int b)
{
	return (a + b);
}



