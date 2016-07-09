## The two functions below are used to cache the inverse of a matrix utilizing the scoping rules of R Language

## The "makecacheMatrix" function creates a "Matrix" that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  matinv <- NULL
  set <- function(y)  {
    x <<- y
    matinv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) matinv <<- solve
  getinv <- function() matinv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## The "cachesolve" function calculates the inverse of the "Matrix" object returned by the above "makecacheMatrix" function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matinv <- x$getinv()
  if(!is.null(matinv)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  matinv <- solve(data, ...)
  x$setinv(matinv)
  matinv
}
