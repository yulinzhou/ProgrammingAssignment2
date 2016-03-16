## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  rever <- NULL
  set <- function(y) {
    x <<- y
    rever <<- NULL
  }
  get<-function() x
  setrever<-function(reverse) rever<<-reverse
  getrever<-function() rever
  list(set = set, get = get,
         setrever = setrever,
        getrever = getrever)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  rever <- x$getrever()
  if(!is.null(rever)) {
    message("getting cached dat
            a")
    return(rever)}
  data <- x$get()
  rever <- t(data, ...)
  x$setrever(rever)
  rever
  }
  
  
  
