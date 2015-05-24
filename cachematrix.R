## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}


## inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        myMatrix<-makeCacheMatrix();
        solve(myMatrix);
}
