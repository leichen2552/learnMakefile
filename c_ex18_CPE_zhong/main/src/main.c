#include <stdio.h>
#include "common.h"
#include "define.h"

int main()
{
    printf("Version: %s\n", VERSION);
    printf("main()::start main ...\n");
    
    common();
    module_main();
}
