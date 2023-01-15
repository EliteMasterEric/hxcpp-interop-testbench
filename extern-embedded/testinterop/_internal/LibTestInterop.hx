package testinterop._internal;

@:cppNamespaceCode("
int add_numbers(int a, int b) {
    return a + b;
}

void print_hello() {
    printf(\"Hello from C++!\");
}

int get_seven() {
    return 7;
}

void print_number(int number) {
    printf(\"Number: %d\", number);
}
")
class LibTestInterop {
    @:native("add_numbers")
    static extern function add_numbers(a:Int, b:Int):Int;

    @:native("print_hello")
    static extern function print_hello():Void;

    @:native("get_seven")
    static extern function get_seven():Int;

    @:native("print_number")
    static extern function print_number(a:Int):Void;

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
