# cffi-legacy

Demonstration of C++ interop using CFFI (legacy tools).

## Sample Instructions

1. Install `Haxe` and install `hmm` via Haxelib.
2. Run `cffi-legacy/project/build.bat`.
    - Check to ensure that `cffi-legacy/ndll/Windows/testinterop.ndll` is generated.
3. Navigate to `cffi-legacy/sample/main/` and run `haxelib run hmm install`.
    - Check to ensure that `cffi-legacy/sample/main/.haxelib/` is generated.
3. Run `cffi-legacy/sample/main/build-cpp.bat`.
4. You can now run `cffi-legacy/sample/main/bin/cpp/Main.exe`.

## Target Compatibility

- `hxcpp`: ✅
- `python`: ❌
- `neko`: ❌
- `hashlink`: ❌

## Notes

- CFFI legacy requires functions to be loaded at runtime.
- CFFI legacy has no support for type checking.
- CFFI legacy can generally be expected to have worse performance than CFFI PRIME.
