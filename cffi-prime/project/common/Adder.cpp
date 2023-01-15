#include "Adder.h"

int add_numbers(int a, int b) {
    return a + b;
}

void print_hello() {
    printf("Hello from C++!");
}

int get_seven() {
    return 7;
}

void print_number(int number) {
    printf("Number: %d", number);
}

// PRIME2 because 2 arguments
DEFINE_PRIME2(add_numbers);

// PRIME0v because no arguments and void return type
DEFINE_PRIME0v(print_hello);

// PRIME0 because no arguments
DEFINE_PRIME0(get_seven);

// PRIME1v because 1 argument and void return type
DEFINE_PRIME1v(print_number);
