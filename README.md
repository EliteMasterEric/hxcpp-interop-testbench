# hxcpp-interop-testbench

This repository demonstrates using the various tools available to Haxe to directly interoperate with C++:

1. C++ Externs
2. CFFI Legacy
3. CFFI Prime
4. `ammer`, a library by Aurel300

C++ externs are the easiest to set up in most circumstances, but limit you to the `hxcpp` target, whereas the other options can provide compatibility with other platforms (such as HashLink or Python).

Each sample provides a minimum example project, providing a simple addition function to demonstrate how to allow the C++ code to receive and return values. The sample libraries are made for pure Haxe; they do not require any additional libraries (such as Lime) to properly build, but should be fully compatible with them.