package testinterop;

import testinterop._internal.LibTestInterop;

class TestInterop {
    public static function test():Void {
        var a:Int = randomNumber();
        trace("a = " + a);

        var b:Int = randomNumber();
        trace("b = " + b);

        trace("a + b = " + LibTestInterop.add_numbers(a, b));

        LibTestInterop.print_hello();

        trace('Seven: ' + LibTestInterop.get_seven());

        LibTestInterop.print_number(42);
    }

    static inline function randomNumber():Int {
        return Math.floor(Math.random() * 100);
    }
}