

a = NULL
        set = function(y) {
                x <<- y
                a <<- NULL
        }
        get = function() x
        seta = function(inverse) a <<- inverse 
        geta = function() a
        list(set=set, get=get, seta=seta, geta=geta)
}




cacheSolve <- function(x, ...) {
       
        
        a = x$getinv()
        
      
        if (!is.null(a)){
                
                message("getting cached data")
                return(a)
        }
        
      
        mat.data = x$get()
        a = solve(mat.data, ...)
      
        x$setinv(a)
        
        return(a)
}
