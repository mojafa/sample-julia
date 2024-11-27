# src/main.jl
println("Hello, Julia DevContainer!")

function greet(name::String)
    return "Hello, $name!"
end

# Example usage
println(greet("Developer"))

# Simple test
using Test
@test greet("Julia") == "Hello, Julia!"
