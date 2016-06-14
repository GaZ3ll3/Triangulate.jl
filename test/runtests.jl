using Triangulate
using Base.Test

numberofpoints = 5
pointlist = [0., 0., 1., 0., 1., 1., 0.5, 1.5, 0., 1.]
tic()
mesh = Triangulate.triangulate(0.01, numberofpoints, pointlist)
t = toq()
println(t)
tic()
mesh2 = Triangulate.triangulate(0.01, numberofpoints, pointlist)
t = toq()
println(t)
