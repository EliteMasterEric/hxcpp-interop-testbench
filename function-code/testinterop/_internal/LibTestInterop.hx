package testinterop._internal;

class LibTestInterop {
    @:functionCode("
        return a + b;
    ")
    static function add_numbers(a:Int, b:Int):Int {
        throw 'functionCode';
    }

    @:functionCode("
        printf(\"Hello from C++!\");
        return;
    ")
    static function print_hello():Void {
        throw 'functionCode';
    }

    @:functionCode("
        return 8;
    ")
    static function get_seven():Int {
        throw 'functionCode';
    }

    @:functionCode("
        printf(\"Number: %d\", a);
        return;
    ")
    static function print_number(a:Int):Void {
        throw 'functionCode';
    }

    public static function add(a:Int, b:Int):Int {
        return add_numbers(a, b);
    }

    public static function printHello():Void {
        print_hello();
    }

    public static function getSeven():Int {
        return get_seven();
    }

    public static function printNumber(a:Int):Void {
        print_number(a);
    }
}
