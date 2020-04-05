## My functions solve the inverse of a matrix by caching the result within a lexical scope of a function. This process is used to avoid overclocking the memory of my computer with excess computations.


## "makeCacheMatrix" creates a new environment. The inverse matrix is cached inside the object m, within the main environment which is originial for each instance the function is called. The output is a list of 5 named elements, which are defined as setmatrix, getmatrix, setinverse, getinverse and getenv

makeCacheMatrix <- function(x = matrix()) {
xMat<-makeCacheMatrix(x)
parent.env(xMat$getenv())$m
environment(xmat$getmean)
m<-NULL
env <- environment()
y<-NULL

setmatrix<-function(y){
	x<<-y
	m<<-NULL
}

getmatrix<-function() x
setinverse<-function(solve) m<<-solve
getinverse<-function() m
getenv<- function() environment()

list (setmatrix=setmatrix, getmatrix = getmatrix,
setinverse = setinverse,
getinverse = getinverse,
getenv = getenv)

}


## Write a short comment describing this function

cacheSolve <- function(xMat= m(), ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- xMat$getinverse()
        if(!is.null(m)){
        	if(xMat$setmatrix() == xMat$getmatrix()) {
        message("getting cached data")
        matrix<-xMat$get()
        m<-solve(matrix, ...)
        xMat$setmatrix(m)
        return(m)		
        }
        y <- xMat$getmatrix()
        xMat$setmatrix(y)
        m <- solve(y, ...)
        xMat$setinverse(m)
        m
        }
}

