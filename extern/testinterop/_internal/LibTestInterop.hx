package testinterop._internal;

@:keep
#if !display
@:build(testinterop._internal.Linc.buildLocalXml('TESTINTEROP', '../..'))
@:build(testinterop._internal.Linc.buildLocalInclude('common/Adder.h', '../..'))
#end
extern class LibTestInterop {
    @:native("add_numbers")
    static extern function add(a:Int, b:Int):Int;

    @:native("print_hello")
    static extern function printHello():Void;

    @:native("get_seven")
    static extern function getSeven():Int;

    @:native("print_number")
    static extern function printNumber(a:Int):Void;
}
