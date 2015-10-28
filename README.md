# Tuxedo

![Top Hat](img/tophat.png)

## Documentation-driven development

Implementing technical and scientific algorithms in code starts with a thorough understanding of the problem
that is being solved and how a particular algorithm solves that problem. Tuxedo provides a framework for
transforming theory found in publications and technical papers into testable, usable code.

A proper and well-dressed algorithm implementation starts with naming it and documenting its purpose. Tuxedo
provides a macro in the Julia environment that scaffolds documentation, function definition and unit tests.

````julia
julia> @tux arima "Auto-regressive integrated moving average"
````

Although Tuxedo is planned to initially support the [Julia](http://julialang.org) programming language, future 
support is also planned for other slower, albeit very popular, dynamic programming languages such as 
[R](https://cran.r-project.org), [Python](https://www.python.org) and [Octave](https://www.gnu.org/software/octave/).
