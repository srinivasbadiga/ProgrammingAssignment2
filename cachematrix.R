## Put comments here that give an overall description of what your
## functions cache the inverse of a matrix

## Write a short comment describing this function
##it create matrix object that cache the inverse

makeCacheMatrix <- function(x1 = matrix()) {
        inver <- NULL
  setx <- function(y1){
    x1 <<- y1
    inver <<- NULL
  }
  getx <- function() x1
  setInver <- function(solveMatrix) inver <<- solveMatrix
  getInver <- function() inver
  list(setx = setx, getx = getx, setInver = setInver, getInver = getInver)

}


## Write a short comment describing this function
##it returns inverse of matrix returned in above makeCacheMatrix

cacheSolve <- function(x1, ...) {
        inver <- x1$getInver()
  if(!is.null(inver)){
    message("getting cached data")
    return(inver)
  }
  data <- x1$getx()
  inver <- solve(data)
  x1$setInver(inver)
  inver     
        ## Return a matrix that is the inverse of 'x'
}
