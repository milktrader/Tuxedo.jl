# Tuxedo.jl

![Top Hat](img/tophat.png)

## Dressing up your algorithms with documentation-driven development

Implementing technical and scientific algorithms in code starts with a thorough understanding of the problem
that is being solved and how a particular algorithm solves that problem. Tuxedo provides a framework for
transforming theory found in publications and technical papers into documented, testable, and usable code.

A proper and well-dressed algorithm implementation starts with naming it and documenting its purpose. Tuxedo
provides a macro in the Julia environment that scaffolds documentation, function definition and unit tests.

````julia
julia> @tux MyPackage mymethod
````
[![Build Status](https://travis-ci.org/milktrader/Tuxedo.jl.png)](https://travis-ci.org/milktrader/Tuxedo.jl)
