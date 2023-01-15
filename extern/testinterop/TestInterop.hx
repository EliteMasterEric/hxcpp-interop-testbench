package testinterop;

import testinterop._internal.LibTestInterop;

class TestInterop {
    public static function test():Void {
        var a:Int = randomNumber();
        trace("a = " + a);

        var b:Int = randomNumber();
        trace("b = " + b);

        trace("a + b = " + LibTestInterop.add(a, b));

        LibTestInterop.printHello();

        trace('Seven: ' + LibTestInterop.getSeven());

        LibTestInterop.printNumber(42);
    }

    static inline function randomNumber():Int {
        return Math.floor(Math.random() * 100);
    }
}