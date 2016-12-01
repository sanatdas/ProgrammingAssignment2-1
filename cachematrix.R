# Function "makeCacheMatrix" gets the input matrix x as input,returns functions:
# "set" to set/reset value of the matrix,
# "get" to retrive the value of matrix,
# "setinverse" to set the value of the matrix inverse,
# "getinverse" to retrieve the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()){
        cachedInverse <-NULL
        set <- function(y){
                x <<- y
                cachedInverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) cachedInverse <<- inverse
        getinverse <- function() cachedInverse
        list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
}


# function "cacheSolve" gets the inverse of the matrix created with above 
# function.If the inverse matrix is already computed, it gets the details of 
# the matrix from cache.Otherwise, it creates the inverse matrix of the given matrix
# and sets the matrix value in the cache using setmatrix function. 

cacheSolve <- function(x,...){
        inverse <- x$getinverse()
        if(!is.null(inverse)){
                message("getting cached data")
                return(inverse)
        }
        inputmatrix <- x$get()
        inverse <- solve(inputmatrix,...)
        x$setinverse(inverse)
        inverse
}
