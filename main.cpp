#include <iostream>
#include <malloc.h>


int main(){
    int *test = (int*)malloc(sizeof(int));
    test[0] = 5;

    printf("returned %d of size %lu at address %p\n", test[8597234], sizeof(test), test);
    free(test);
    return 0;
}