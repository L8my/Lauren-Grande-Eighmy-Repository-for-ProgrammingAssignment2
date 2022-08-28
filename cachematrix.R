## Put comments here that give an overall description of what your
## functions do

## there are 2 functions to make a matrix and cache the data

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL     #initilizing inverse as null
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x  #function to get matrix of x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv   #function to get inverse of matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## used to get the cache data

cachesolve <- function(x, ...) #gets cached data {
  inv <- x$getinverse()
if(!is.null(inv)) {#checking if inverse is null
  message("getting cached data")
  return(inv)  #returns inverse value
}
matrix_to_invert <- x$get() #return a matrix that is inverse of x
inv <- solve(matrix_to_invert, ...)
x$setinverse(inv)
inv
}
