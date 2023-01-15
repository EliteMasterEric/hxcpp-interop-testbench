#pragma once

// Setup for DLL export.
#ifdef _WIN32
	#define LIB_EXPORT __declspec(dllexport)
#else
	#define LIB_EXPORT
#endif

// Imports
#include <cstdio>

// Exports
LIB_EXPORT int add_numbers(int a, int b);
LIB_EXPORT void print_hello();
LIB_EXPORT int get_seven();
LIB_EXPORT void print_number(int number);
