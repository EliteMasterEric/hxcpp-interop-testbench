// Note: This line needs to be the first line in ANY extern C++ file.
// You cannot move it to the header file.
#include <hxcpp.h>

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
