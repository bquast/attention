#' @name RowMax
#' @title Maximum of Matrix Rows
#' @param x input value (numeric)
#' @return output value (numeric)
#' @export
#' @examples
#' # generate a matrix of integers (also works for floats)
#' set.seed(0)
#' M = matrix(floor(runif(9, min=0, max=3)),
#'            nrow=3,
#'            ncol=3)
#' print(M)
#'
#' # this outputs
#' #      [,1] [,2] [,3]
#' # [1,]    2    1    2
#' # [2,]    0    2    2
#' # [3,]    1    0    1
#'
#' # apply RowMax() to the matrix M, reformat output as matrix again
#' # to keep the maxs on their corresponding rows
#' as.matrix( RowMax(M) )
#'
#' # this outputs
#' #      [,1]
#' # [1,]    2
#' # [2,]    2
#' # [3,]    1
#'

RowMax <- function(x){
    mxs= apply(x, MARGIN=c(1), max)
    as.matrix(mxs)
}
