## Put comments here that give an overall description of what your
## functions do

## This function creates a list of functions to set and get the value
## of the matrix and its inverse.

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
             getmatrix = getmarix)

}


## Make the inverse of the matrix created on previous function

cacheSolve <- function(x, ...) {

       ## Return a matrix that is the inverse of 'x'
       m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m


}
