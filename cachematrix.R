## function makeCacheMatrix gets the input matrix x,
## set the value the given matrix, get the value of matrix 'x',
## set the value of inverse of matrix x, get the value of inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}

## function cacheSolve gets the inverse of the matrix created with above 
## function.It checks if the inverse matrix is already existing in the cache.
## If exists, then it gets the details of the matrix from cache.
## Otherwise, it creates the inverse matrix of the given matrix 'x'
## and sets the matrix value in the cache using setmatrix function. 

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
       m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }    
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m
}
