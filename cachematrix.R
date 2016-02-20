## Functions for programming assignment #2
## using cached data

## This function initiates an object of type matrix and its related 
## methods to get and set the matrix, as well as to get and set its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL 
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  print(list( set = set, get = get, setinverse = setinverse, getinverse = getinverse))
}


## This function calculates a matrix's inverse and stores it in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("Getting cached data")
    return(i)
  }
  matrix <- x$get()
  i <- solve(matrix)
  x$setinverse(i)
  print(i)
}
