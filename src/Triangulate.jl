module TriangleIO

type triangulateio64
  pointlist::Array{Int32,1}
  pointattributelist::Array{Float64,1}
  pointmarkerlist::Array{Int32,1}
  numberofpoints::Int32
  numberofpointattributes::Int32

  trianglelist::Array{Int64,1}
  triangleattributelist::Array{Float64,1}

  numberoftriangles::Int32
  numberofcorners::Int32
  numberoftriangleattributes::Int32

  # segmentlist::Array{Int32, 1}
  # numberofsegments::Int32
  # regionlist::Array{Float64,1}
  # numberofregions::Int64

  edgelist::Array{Int32,1}

  numberofedges::Int32
end

function triangulate(
size::Float64,
numberofpoints::Int32,
numberofpointattributes::Int32,
pointlist::Array{Float64, 1},
pointattributelist::Array{Float64, 1},
pointmarkerlist::Array{Int32, 1},
numberofsegments::Int32,
numberofholes::Int32,
numberofregions::Int32,
regionlist::Array{Float64, 1})

ret = ccall((:triangleio, "../lib/libtriangle.so"), Any, (Ptr{Void}, Ptr{UInt8}, Ptr{UInt8}, Int32, Int32, Ptr{Float64}, Ptr{Float64},Ptr{Int32}, Int32, Int32, Int32, Ptr{Float64}),
 (pointer_from_objref(TriangleIO)),"QpczAevn",string("Qpr","a",size,"zBPe"), numberofpoints, numberofpointattributes,  pointlist, pointattributelist, pointmarkerlist, numberofsegments, numberofholes,
 numberofregions, regionlist)

return ret

end

end
