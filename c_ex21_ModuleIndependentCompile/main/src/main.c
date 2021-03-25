#include <stdio.h>
#include "common.h"
#include "define.h"
#include "slib.h"
#include "dlib.h"

int main()
{
    printf("Version: %s\n", VERSION);
    printf("main()::start main ...\n");
    
    common();
    module_main();

	printf("Dynamic Lib %s\n", dlib_name());
	printf("2 + 3 = %d\n",add(3, 2));

	printf("Dynamic Lib %s\n", slib_name());
	printf("2 * 3 = %d\n",multi(2, 3));
}
