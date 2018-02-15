#assignment

#inverse of a matrix

#the determinant of a matrix

makeCacheMatrix<- function(x = matrix()) {
  #This function creates a special "matrix" object that can cache its inverse
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s<<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("retrieving the inverse from the cache")
    return(s)
  } else{
    solve(s)
    x$setsolve(s)
    
    return(s)
  }
  
}
