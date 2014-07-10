module TriangleIO

type triangulateio64
  pointlist::Array{Int64,1}                                             
  pointattributelist::Array{Float64,1}                               
  pointmarkerlist::Array{Int64,1}                                      
  numberofpoints::Int64                                            
  numberofpointattributes::Int64                                   

  trianglelist::Array{Int64,1}                                           
  triangleattributelist::Array{Float64,1}                                   
                                           
  numberoftriangles::Int64                                         
  numberofcorners::Int64                                           
  numberoftriangleattributes::Int64                                                   

  regionlist::Array{Float64,1}                      
  numberofregions::Int64                   

  edgelist::Array{Int64,1}                        
           
  numberofedges::Int64  
end

function triangulate(
size::Float64,
numberofpoints::Int64,
numberofpointattributes::Int64,
pointlist::Array{Float64, 1},
pointattributelist::Array{Float64, 1},
pointmarkerlist::Array{Int64, 1},
numberofsegments::Int64,
numberofholes::Int64,
numberofregions::Int64,
regionlist::Array{Float64, 1})

ret = ccall((:triangleio, "../lib/libtriangle.so"), Any, (Ptr{Void}, Ptr{Uint8}, Ptr{Uint8}, Int64, Int64, Ptr{Float64}, Ptr{Float64},Ptr{Int64}, Int64, Int64, Int64, Ptr{Float64}),
 (pointer_from_objref(TriangleIO)),"pczAevn",string("pra",size,"zBP"), numberofpoints, numberofpointattributes,  pointlist, pointattributelist, pointmarkerlist, numberofsegments, numberofholes, 
 numberofregions, regionlist)

return ret

end

end
