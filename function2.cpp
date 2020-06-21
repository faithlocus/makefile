#include "functions.hpp"
#include <stdio.h>

int factorial(int n)
{
    if (1 != n)
        return n * factorial(n - 1);
    else
        return 1;
}
