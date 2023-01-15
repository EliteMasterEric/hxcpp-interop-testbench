# extern-embedded

Demonstration of C++ interop using embedded externs.

## Sample Instructions

1. Install `Haxe` and install `hmm` via Haxelib.
2. Navigate to `extern-embedded/sample/main/` and run `haxelib run hmm install`.
    - Check to ensure that `extern-embedded/sample/main/.haxelib/` is generated.
3. Run `extern-embedded/sample/main/build-cpp.bat`.
4. You can now run `extern-embedded/sample/main/bin/cpp/Main.exe`.

## Notes

- Compiled project MAY run without any `testinterop.ndll` file.
- Requires no external files, but harder to split up the C++ code.
