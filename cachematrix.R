## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## mi solucion versin 2
## crea funciones set, get para los valores de matriz
## setMI y getMI aplican la funcion solve que calcula la inversa de una matriz cuadrada
MatrizInv <- function(x = matrix(rnorm(9),3,3)) {
  mi <- NULL
  set <- function(y) {
    x <<- y
    mi <<- NULL
  }
  get <- function() x
  setMI <- function(solve) mi <<- solve
  getMI <- function() mi
  list(set = set, get = get,
       setMI = setMI,
       getMI = getMI)
}


## cacheMI: si mi se encuentra en cache muestra resultado
## sin calcular nuevamente.

cacheMI <- function(x, ...) {
  mi <- x$getMI()
  if(!is.null(mi)) {
    message("Ya tenemos la inversa de la matriz")
    return(mi)
  }
  data <- x$get()
  mi <- solve(data, ...)
  x$setMI(mi)
  mi
}
