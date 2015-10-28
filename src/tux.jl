"""
Description
===========

The @tux macro scaffolds a file with a documentation template

Usage
=====

@tux foo

Arguments
=========

> macro tux(name)

References
==========

http://www.duckduckgo.com

"""

macro tux(name)
    src = Pkg.dir("Tuxedo/src/src.jl")
    run(pipeline(`cp $src $name.jl`))
    run(pipeline(`ls`, `cat $name.jl`, pipeline(`sed s/foo/$name/g`, stdout="$name.jl")))
    run(`vi $name.jl`)
end

