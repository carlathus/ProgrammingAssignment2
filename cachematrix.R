## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#1. First intitialize the object (makeCacheMatrix)
#2.define the functions for the object: set, get, setinverse, getinverse to set and get the value of the inverse matrix  
#3. create a new object by returning a list
makeCacheMatrix <- function(x = matrix()) {
inver<-NULL
 set<-function(y){
  
   x <<- y
   inver<<- NULL
}
        
      
get <- function() x
setinverse <- function(inverse) inver<<- inverse
getinverse <- function() inver
list(set = set, get = get,setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
# The cacheSolve function returns the inverse of the matrix (x). First call the function getinverse for the passed object (x)
#then it checks if the inverse matrix has already been calculated in the cache. If not, it compute the inverse

cacheSolve <- function(x, ...) {
  inver<- x$getinverse()
  if(!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  data <- x$get()
  inver <- solve(data)
  x$setinverse(inver)
  inver
}  
        ## Return a matrix that is the inverse of 'x'
