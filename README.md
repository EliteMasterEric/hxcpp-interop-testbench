# hxcpp-interop-testbench

This repository demonstrates using the various tools available to Haxe to directly interoperate with C++.

## Introduction

- A **native library** is one which is built as a `dll` (on Windows), a `.so` (on Linux), or `.dylib` (on Mac) file, which contains machine language for the target architecture, which is then linked with the target application.
- A **foreign function interface** (FFI) is a set of code which allows for executing external code from within a given language.
    - Haxe's foreign function interfaces allow for executing code from native libraries, without recompiling the runtime itself.
    - This means that Haxe can access and execute code from a DLL in any language, however setup for this is very different between targets and only `hxcpp` works with this out-of-the-box.
- A **target native library** is one which is built as a library for a specific programming language, and thus only work when building to that target. 
    - You can use Haxe's `extern` keyword to include these libraries in your project, and these are essential for operating on code outside of Haxe.
    - For example, when building for the Java target, `jar` files can be used as a target native library, and when building for the NodeJS target, `js` files from NPM packages can be used.

## Examples

Each sample provides a minimum example project, providing a simple addition function to demonstrate how to allow the C++ code to receive and return values. The sample libraries are made for pure Haxe; they do not require any additional libraries (such as Lime) to properly build, but should be fully compatible with them.

This library contains five examples:

Name | Requires Separate DLL | Ease of Use | Supports Haxelibs
---|---|---|---
`extern` | NO | 1/5 | ✅
`extern-embedded` | NO | 4/5 | ✅
`cffi-legacy` | YES | 2/5 | ✅
`cffi-prime` | YES | 3/5 | ✅
`ammer` | NO | 5/5 | ❌

1. `extern`: C++ Extern Project
    - Requires the target application to use the `hxcpp` target, and does not support other targets.
    - C++ code is placed into a separate folder from the Haxe code for organization.
    - Links with the source code at build time, and doesn't require a DLL or a separate compilation step.
        - Compiled project MAY run without any `testinterop.ndll` file.
    - Linked library cannot be updated without recompiling the executable.
2. `extern-embedded`: C++ Embedded Externs
    - Requires the target application to use the `hxcpp` target, and does not support other targets.
    - C++ code is embedded into the Haxe code.
        - Results in cleaner code on smaller projects but unmaintainable code on larger projects.
    - Embedded into source code at build time, and doesn't require a DLL or separate compilation step.
        - Compiled project MAY run without any `testinterop.ndll` file.
    - Linked library cannot be updated without recompiling the executable.
3. `cffi-legacy` CFFI Legacy
    - Values must be boxed to be sent between C++ and Haxe, and functions are weakly typed (only checked at runtime).
    - Links with the built native library at runtime, thus the `ndll` file must be included with the EXE when distributing.
        - Compiled project CANNOT run without the `testinterop.ndll` file in a nearby directory.
        - NDLL file can be updated or replaced after building without modifying the executable.
    - Complex configuration required to use with other targets (`hashlink`, `neko`, `python`, `lua`, etc).
4. `cffi-prime` CFFI Prime
    - Modern upgrade to Haxe CFFI.
    - Values do not need to be boxed and functions are strongly typed (checked at compilation time).
    - Links with the built native library at runtime, thus the `ndll` file must be included with the EXE when distributing.
        - Compiled project CANNOT run without the `testinterop.ndll` file in a nearby directory.
        - NDLL file can be updated or replaced after building without modifying the executable.
    - Complex configuration required to use with other targets (`hashlink`, `neko`, `python`, `lua`, etc).
5. [ammer](https://github.com/Aurel300/ammer)
    - Utilizes a library by Aurel300
    - Vastly simplified linking process
    - No additional configuration needed to link against `hashlink` and `lua` (other targets in development)
    - Complex configuration required to use linked code as a haxelib (library packaging in development)


## Useful Resources

- https://github.com/snowkit/hxcpp-guide/issues/1
- https://community.haxe.org/t/some-questions-about-the-ammer-library-ffi-haxelib-externs/2271
- https://github.com/Aurel300/ammer
- https://github.com/larsiusprime/steamwrap
