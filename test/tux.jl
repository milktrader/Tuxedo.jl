using FactCheck
FactCheck.setstyle(:compact)
FactCheck.onlystats(true)

println("")

facts("macro calls to base methods work") do

    src = Pkg.dir("Tuxedo/src/src.jl")

    context("Julia version is a minimum of 0.4") do
        @fact match(r"[0-9]", string(VERSION), 2).match >= "4" --> true
    end

    context("pipeline works") do
        @fact typeof(run(pipeline(`cat $src`, pipeline(`tail -0`)))) --> Void
    end
end

println("")
