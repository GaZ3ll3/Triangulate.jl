Triangulate.jl
==============

Triangulation routine, part of pdetools.jl

to use the routine, first compile the library by

```
cd ./lib && make 
```

then follow the test.jl example. 


NOTICE: currently it only supports tol to be at least 0.0001. If you are looking for finer mesh, try to enlarge the domain and run it, then shrink back. 

