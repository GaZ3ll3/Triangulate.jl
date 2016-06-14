using Triangulate
using Base.Test

numberofpoints = 5
pointlist = [0., 0., 1., 0., 1., 1., 0.5, 1.5, 0., 1.]
tic()
mesh = Triangulate.triangulate(0.01, numberofpoints, pointlist)
mesh = Triangulate.triangulate(0.001, numberofpoints, pointlist)
mesh = Triangulate.triangulate(0.0001, numberofpoints, pointlist)
t = toq()
println(t)

