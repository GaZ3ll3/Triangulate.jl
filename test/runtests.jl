using Triangulate
using Base.Test

numberofpoints = 5
pointlist = [0., 0., 1., 0., 1., 1., 0.5, 1.5, 0., 1.]
ret = Triangulate.execute(0.01, numberofpoints, pointlist)
