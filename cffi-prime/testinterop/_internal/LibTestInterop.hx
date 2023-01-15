package testinterop._internal;

import cpp.Lib;

class LibTestInterop {
    // iii - 2 ints, return int
    public static var add:cpp.Callable<(Int, Int) -> Int> = Loader.load("add_numbers", "iii");
    // v - 0 args, return void
    public static var printHello:cpp.Callable<() -> cpp.Void> = Loader.load("print_hello", "v");
    // i - 0 args, return int
    public static var getSeven:cpp.Callable<() -> Int> = Loader.load("get_seven", "i");
    // iv - 1 arg, return void
    public static var printNumber:cpp.Callable<(Int) -> cpp.Void> = Loader.load("print_number", "iv");
}