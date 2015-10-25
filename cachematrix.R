## Put comments here that give an overall description of what your
## functions do:
## finding the inverse of a (square-)matrix. If already calculated, 
# the function looks if the result is stored in cache and gives the result
# to unecessary computation especially for complex matrices is avoided


## Write a short comment describing this function

## this is a function that implements some functions to handle the 
## matrix and gets and sets some properties

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

# this functon calculates the inverse of a given 
# square matrix created by the above function.
# If calculated before and if  the result is in cache, it 
# simply gives bach the cached result.
# If not, the inverse is calculated and stored in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
