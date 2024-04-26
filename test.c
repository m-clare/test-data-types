#include <stdio.h>
#include <limits.h>

int main() {
    printf("%lu", (unsigned long)sizeof(unsigned int));
    printf(" | ");
    printf("%lu", (unsigned long)sizeof(unsigned long));
    return 0;
}
