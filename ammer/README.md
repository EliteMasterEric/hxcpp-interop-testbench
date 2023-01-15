# ammer

Demonstration of C++ interop using ammer.

## Sample Instructions

1. Install `Haxe` and [MSVC](https://visualstudio.microsoft.com/downloads/), and install `hmm` via Haxelib.
2. Open the `x86 Native Tools Command Prompt for VS`, navigate to the `ammer/project/` folder, and run `build-windows.bat`.
    - This should create a `dialoggle.dll`, a `dialoggle.obj`, a `dialoggle.lib`, and a `tmp.dialoggle.h` in the `ammer/project/` folder.
3. Navigate to the `ammer/` folder and run `haxelib run hmm install`.
    - Check to ensure that `extern/sample/main/.haxelib/` is generated.
4. Run `ammer/build-cpp.bat`.
5. You can now run `extern/sample/main/bin/cpp/Main.exe`.

## Notes

- `ammer` currently does not support building libraries into distributable Haxelibs.
- Compiled project MAY run without any `testinterop.ndll` file.
