import Lake
open Lake DSL

package YatimaStdLib

@[default_target]
lean_lib YatimaStdLib where
  precompileModules := true

def ffiC := "ffi.c"
def ffiO := "ffi.o"

target importTarget (pkg : Package) : FilePath := do
  let oFile := pkg.oleanDir / pkg.name.toString / "FFI" / ffiO
  let srcJob ← inputFile $ pkg.srcDir / pkg.name.toString / "FFI" / ffiC
  buildFileAfterDep oFile srcJob fun srcFile => do
    let flags := #["-I", (← getLeanIncludeDir).toString, "-fPIC"]
    compileO ffiC oFile srcFile flags

extern_lib ffi (pkg : Package) := do
  let name := nameToStaticLib "ffi"
  let job ← fetch <| pkg.target ``importTarget
  buildStaticLib (pkg.buildDir / defaultLibDir / name) #[job]

require std from git
  "https://github.com/leanprover/std4/" @ "2919713bde15d55e3ea3625a03546531283bcb54"

require LSpec from git
  "https://github.com/yatima-inc/lspec/" @ "16ec19e608385e947ef9b7e286c048e27e6aa664"
