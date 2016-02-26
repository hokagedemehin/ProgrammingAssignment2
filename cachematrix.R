## The functions below can solve for a square matrix and return its inverse 
## and cache the result to be recalled again without recalculating 

## This function collects the values of the matrix 
## and stores the cached inverse to be displayed again if needed

makeCacheMatrix <- function(x = matrix()) {
x<-matrix(x,2,2)
value<-NULL
setValue<-function(z){

x<<-z
value<<-NULL
}
getValue<-function(){x}
setInverse<-function(newValue){value<<-newValue}
getInverse<-function(){value}

list(setValue=setValue, getValue=getValue, setInverse=setInverse,
getInverse=getInverse)

}


## This function solves for the inverse of the matrix supplied above
## and return the inverse to be displaced and cached

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
new<-x$getInverse()
if(!is.null(new)){
message("getting cached data")
return(new)
}
data<-x$getValue()
answer<-solve(data)
x$setInverse(answer)
answer

}
