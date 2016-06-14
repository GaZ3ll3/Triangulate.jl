module Triangulate

type triangulateio64
  pointlist::Array{Float64,1}
  numberofpoints::Int32
  trianglelist::Array{Int32,1}
  numberoftriangles::Int32
  edgelist::Array{Int32,1}
  numberofedges::Int32
end

const TrianglelibPath = abspath(joinpath(splitdir(Base.source_path())[1],"..","lib","libtriangle.so"))

function execute(size::Float64,numberofpoints::Int64,pointlist::Array{Float64, 1})
  println(TrianglelibPath)
  ret = ccall((:triangleio, TrianglelibPath), Any, (Ptr{Void}, Ptr{UInt8}, Ptr{UInt8}, Int64, Ptr{Float64}),(pointer_from_objref(Triangulate)),"pcAevn",string("pr","a",size,"BPe"), Int32(numberofpoints), pointlist)
  return ret
end

export execute

end

