### Steps

```
tuist build
```

### Error

> framework 'XcodeKit' not found

#### Full Output

```shell
Loading and constructing the graph
It might take a while if the cache is empty
Using cache binaries for the following targets:
Generating workspace Tuist.xcworkspace
Generating project Tuist
Building scheme Tuist
[Tuist] Write Auxiliary File Tuist.hmap
[Tuist] Write Auxiliary File Tuist-own-target-headers.hmap
[Tuist] Write Auxiliary File Tuist-project-headers.hmap
[Tuist] Write Auxiliary File Tuist-all-non-framework-target-headers.hmap
[Tuist] Write Auxiliary File Tuist.DependencyMetadataFileList
[Tuist] Write Auxiliary File Tuist-generated-files.hmap
[Tuist] Write Auxiliary File Tuist-all-target-headers.hmap
[Tuist] Write Auxiliary File Tuist-DebugDylibPath-normal-arm64.txt
[Tuist] Write Auxiliary File Tuist-DebugDylibInstallName-normal-arm64.txt
[Tuist] Write Auxiliary File Tuist.SwiftFileList
[Tuist] Write Auxiliary File Tuist_const_extract_protocols.json
[Tuist] Write Auxiliary File Tuist.SwiftConstValuesFileList
[Tuist] Write Auxiliary File Tuist.LinkFileList
[Tuist] Write Auxiliary File Tuist-OutputFileMap.json
[Tuist] Write Auxiliary File Entitlements.plist
[Tuist] Linking __preview.dylib
[Tuist] Processing Tuist-Info.plist
[Tuist] Compiling TuistAssets+Tuist.swift
[Tuist] Compiling ContentView.swift
[Tuist] Compiling TuistApp.swift
[Tuist] Compiling GeneratedAssetSymbols.swift
[Tuist] Compiling TuistBundle+Tuist.swift
[Tuist] Copy arm64-apple-macos.abi.json -> Tuist.abi.json
[Tuist] Copy arm64-apple-macos.swiftmodule -> Tuist.swiftmodule
[Tuist] Copy arm64-apple-macos.swiftdoc -> Tuist.swiftdoc
[Tuist] Copy arm64-apple-macos.swiftsourceinfo -> Tuist.swiftsourceinfo
[Tuist] Linking Tuist.debug.dylib
❌ ld: framework 'XcodeKit' not found
❌ clang: error: linker command failed with exit code 1 (use -v to see invocation)


✖ Error
  The command `xcodebuild build -scheme Tuist -workspace /Users/navtoj/Developer/repro-tuist-xcodekit/Tuist.xcworkspace -destination platform=macOS,arch=arm64` exited with error code 65 and message:
  ** BUILD FAILED **
  The following build commands failed:
  	Ld /Users/navtoj/Library/Developer/Xcode/DerivedData/Tuist-adqbbelhnhgudxasaigalgtkspts/Build/Products/Debug/Tuist.app/Contents/MacOS/Tuist.debug.dylib normal (in target 'Tuist' from project 'Tuist')
  	Building workspace Tuist with scheme Tuist
  (2 failures)

  Sorry this didn’t work. Here’s what to try next:
   ▸ If the error is actionable, address it
   ▸ If the error is not actionable, let's discuss it in the Troubleshooting & how to
   ▸ If you are very certain it's a bug, file an issue
   ▸ Check out the logs at /Users/navtoj/.local/state/tuist/logs/EFE66923-E359-413E-BB68-62999B77A50F.log
```
