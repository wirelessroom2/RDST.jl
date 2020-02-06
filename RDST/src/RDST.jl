"""
Streamable Random Number Generator
"""

module RDST

using Random

import Base: rand, show, copy

export AbstractRNGStream, AbstractStreamableRNG
export copy
export checkseed, MRG32k3a, rand, srand, reset_stream!, reset_substream!, next_substream!, MRG32k3aGen, show, get_state, next_stream
export Xoshiro256p, Xoshiro256plusGen

abstract type AbstractRNGStream end
abstract type AbstractStreamableRNG <: AbstractRNG end # object of subtype of AbstractStreamableRNG are StreamableRNG
                                                       #currently just mrg32k3a and xoshiro256plus
###mrg32k3a
include("mrg32k3a/mrg32k3a.jl")
include("mrg32k3a/mrg32k3a_types.jl")
include("mrg32k3a/stolen.jl")
#xoshiro256+

include("xoshiro/xoshiro256plus.jl")
include("xoshiro/xoshiro256plus_types.jl")


end # module
