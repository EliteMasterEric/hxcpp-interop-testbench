package testinterop._internal;

import cpp.Lib;

class LibTestInterop {
    public static var add:Dynamic;

    public static var initialized:Bool = false;
    public static function init():Void {
        if (initialized) return;
        initialized = true;

        add = cpp.Lib.load("testinterop", "CFFI_add_numbers", 2);
    }
}