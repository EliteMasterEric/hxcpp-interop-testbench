# extern

Demonstration of C++ interop using externs.

## Sample Instructions

1. Install `Haxe` and install `hmm` via Haxelib.
2. Navigate to `extern/` and run `haxelib dev testinterop .`.
3. Navigate to `extern/sample/main/` and run `haxelib run hmm install`.
    - Check to ensure that `extern/sample/main/.haxelib/` is generated.
4. Run `extern/sample/main/build-cpp.bat`.
5. You can now run `extern/sample/main/bin/cpp/Main.exe`.

## Notes

- `extern` does not appear to work with `hmm` because `@:buildXml` only works with globally installed packages.
- Getting this working as a Haxelib requires an annoying Linc macro.
- Compiled project MAY run without any `testinterop.ndll` file.
