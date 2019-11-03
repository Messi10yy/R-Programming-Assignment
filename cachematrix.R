## Cache the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  y_nrow <- nrow(x)
  y_ncol <- ncol(x)
  y <- matrix(nrow=y_nrow,ncol=y_ncol)
  list(x=x, y=y)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed),
## then cacheSolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  if(is.na(x$y[1]) == TRUE) {
    x$y <- solve(x$x)
    return(x$y)
  }
  else {
    return(x$y)
  }
}
