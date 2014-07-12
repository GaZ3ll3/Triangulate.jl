# include("call.jl")
include("../src/Triangulate.jl")

np = 4
na = 1
pl = [0., 0., 1., 0., 1., 1., 0., 1.]
pal = [1., 1., 1., 1.]
pml = [0, 2, 0, 0]
ns  = 0
nh  = 0
nr  = 1
rl = [0.5, 5.0, 7.0, 0.1]

# ret = ccall((:triangleio, "../lib/libtriangle.so"), Any, (Ptr{Void}, Ptr{Ptr{Uint8}}, Ptr{Ptr{Uint8}}, Int32, Int32, Ptr{Float64}, Ptr{Float64},Ptr{Int32}, Int32, Int32, Int32, Ptr{Float64}),
#  (pointer_from_objref(TriangleIO)),["-p" , "-c", "-z", "-A", "-e", "-v","-n"],
#  ["-p", "-r", "-a0.1","-z", "-B", "-P", "-e"], np, na,  pl, pal, pml, ns, nh, nr, rl)

# println(ret.edgelist)
# println(ret.numberofedges)
# println(ret.pointmarkerlist)



ret = TriangleIO.triangulate(0.01, int32(np), int32(na), pl, pal, int32(pml), int32(ns), int32(nh), int32(nr), rl)

# println(ret.triangleattributelist)

println(ret.edgelist)
println(ret.numberofedges)
println(ret.pointmarkerlist)