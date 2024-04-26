#include <stdio.h>
#include <limits.h>
#include <stdint.h>

int main() {
    printf("%lu", (unsigned long)sizeof(unsigned int));
    printf(" | ");
    printf("%lu", (unsigned long)sizeof(unsigned long));
    printf(" | ");
    printf("%lu", (unsigned long)sizeof(uintptr_t));
    printf(" | ");
    printf("%lu", (unsigned long)sizeof(unsigned long long));
    return 0;
}
