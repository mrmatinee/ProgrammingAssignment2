## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  
  #creates a matrix "x" from a given set of values
  s <- NULL  		
  #creates object "s" to store matrix inverse
  set <- function(y) {		
  #create "set" function to set the matrix/reset cached inverse
    x <<- y
    s <<- NULL
  }
  get <- function() {		
  #create "get" function to return the matrix
  x
  }
  setinverse <- function(solve) {  
  #create "setinverse" function using "solve" to set the inverse 
  s <<- solve
  }
  getinverse <- function() {  
  #create "getinverse" function to return the cached inverse  
  s
  }
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
} #create list of functions


## Write a short comment describing this function
  
  cacheSolve <- function(x, ...) {  
    #create "cacheSolve" function to return the matrix inverse
    s <- x$getinverse()  	  
    # checks to see whether the inverse is cached
    if(!is.null(s)) {
      message("getting cached data")
      return(s)			  
      # if inverse is cached, returns cached matrix
    }
    data <- x$get()		  
    # otherwise gets matrix
    s <- solve(data, ...)		  
    # sets matrix inverse using "solve" function
    x$setinverse(s)		  
    # caches the matrix inverse in the "s" object
    s
  }
        ## Return a matrix that is the inverse of 'x'
}
