#include "Adder.h"

int add_numbers(int a, int b) {
    return a + b;
}

// CFFI definitions
value CFFI_add_numbers(value a, value b) {
    return alloc_int(add_numbers(val_int(a), val_int(b)));
};
DEFINE_PRIM(CFFI_add_numbers, 2);
