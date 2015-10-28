"""
Description

       The @tux macro scaffolds both method source and test files. The source file includes a documentation template. 

Usage

       @tux MyPackage foo

Method Signature(s)

      @tux(pkg, method)

Details

      The tux macro is used for its side=effects, which is to create a documentation=stubbed file for the method to be written, and a pending
      test file. It takes two arguments: the package method and the method method. The auto-generated method file is placed in the src/ directory
      of the package that is listed, while the auto-generated test file is placed in the test/ directory of the package. The macro determines 
      what version of Julia is being used and places the two files in the appropriate .julia/ directory. After creating these files from 
      REPL, a vi session is opened with both method definition and test files in the buffer.

References

      https://github.com/milktrader/Tuxedo

"""

macro tux(pkg, method)
   
    v    = match(r"[0-9]", string(VERSION), 2)
    ver  = v.match
    home = homedir()
    cd("$home/.julia/v0.$ver/$pkg/")

    src  = Pkg.dir("Tuxedo/src/src.jl")
    test = Pkg.dir("Tuxedo/src/test.jl")

    run(pipeline(`cp $src src/$method.jl`))
    run(pipeline(`cp $test test/$method.jl`))
    run(pipeline(`ls`, `cat src/$method.jl`, pipeline(`sed s/foo/$method/g`, stdout="src/$method.jl")))
    run(`vi src/$method.jl test/$method.jl`)
end
