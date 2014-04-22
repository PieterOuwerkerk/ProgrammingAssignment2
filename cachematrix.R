## These are functions to store a reversible matrix

## put the matrix in cache and clear its reverse and create the necessary functions

makeCacheMatrix <- function(x = matrix()) {
    r <- NULL
    set <- function(y) {
        x <<- y
        r <<- NULL
    }
    get <- function() x
    setrev <- function(reverse) r <<- reverse
    getrev <- function() r
    list(set=set, get=get, setrev=setrev, getrev=getrev)
}


## Retrieve the reverse matrix from cache if available
## If it's not cached, calculate it first

cacheSolve <- function(x, ...) {
    tr <- x$getrev()
    if (is.null(tr)) {
        data <- x$get()
        tr <- solve(data)
        x$setrev(tr)
    } else (
        message("This one is from cache:")
    )
    tr
}
