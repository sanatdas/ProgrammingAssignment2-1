### Assignment2: Caching the Inverse of a Matrix

The goal of this assignment is to write an Rfunction that is able to 
cache potentially time-consuming computations. This programming assignment 
is required to create the inverse of a given matrix. If the inverse is 
already calculated and the matrix has not changed, then it should retrieve 
the inverse matrix from the cache. Otherwise, it will create the inverse
matrix and cache it.

As suggested, a pair of functions are developed that cache the inverse of 
a matrix. 

Below are two functions that are used:

The first function, `makeCacheMatrix` creates a special "Matrix" object, that 
can cache its inverse

The second function 'cacheSolve'computes the inverse of the matrix returned by
the first function 'makeCacheMatrix'. If the inverse has already been 
calculated and the matrix has not changed, then 'cacheSolve' should retrieve 
the inverse from the cache.

For this assignment, it is assumed that the matrix supplied is always
invertible.

