package testinterop._internal;

import ammer.Library;

class LibTestInterop extends Library<"testinterop"> {
    public static function add_numbers(a:Int, b:Int):Int;
    public static function print_hello():Void;
    public static function get_seven():Int;
    public static function print_number(a:Int):Void;
}
