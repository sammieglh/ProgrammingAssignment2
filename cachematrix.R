## This function determines the inverse of a matrix and caches it for future use.
## 

## This function creates a matrix.
##Then the function shou determine the inverse of that matrix.
##The function should set m to the inverse.
##To test the function, I created a small matrix using this code:
##test=matrix (1:6, 2, 2) and then I ran the cache matrix which I saved.


makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
x <<- y
m <<- NULL
}

get <-function()x
setinverse <-function(solve)M <<-solve
getinverse <-function()
m
list(set=set, get=get,
setinverse=setinverse,
getinverse=getinverse)
}

## This function looks at the previous function and determines if it is cached.
## it pulls the cached data if possible and if it can not than it solves for the inverse.

cacheSolve <- function(x, ...) {
m <-x$getinverse()
if(!is.null(m)){
message("getting cached data")
return (m)
}

data <- x$get()
m <-solve(data,...)
x$setinverse(m)
m
}
