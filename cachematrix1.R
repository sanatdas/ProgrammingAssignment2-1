## function makeCacheMatrix gets the input matrix x,
## set the value the given matrix, get the value of matrix 'x',
## set the value of inverse of matrix x, get the value of inverse matrix

makeCacheMatrix <- function(x = matrix()){
    cachedInverse <-NULL
    set <- function(y){
        x <<- y
        cachedInverse <<- NULL
    }
    get <- function() x
    setmatrix <- function(inverse) cachedInverse <<- inverse
    getmatrix <- function() cachedInverse
    list(set = set, get = get, setmatrix=setmatrix,getmatrix=getmatrix)
}


## functionacheSolve gets the inverse of the matrix created with above 
## function.It checks if the inverse matrix is already existing in the cache.
## If exists, then it gets the details of the matrix from cache.
## Otherwise, it creates the inverse matrix of the given matrix 'x'
## and sets the matrix value in the cache using setmatrix function. 

cacheSolve <- function(x,...){
    inverse <- x$getmatrix()
    if(!is.null(inverse)){
        message("getting cached data")
        return(inverse)
    }
    inputmatrix <- x$get()
    inverse <- solve(inputmatrix,...)
    x$setmatrix(inverse)
    inverse
}
