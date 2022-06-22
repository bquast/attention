#' @name RowMax
#' @title Maximum of Matrix Rows
#' @param x input value (numeric)
#' @return output value (numeric)
#' @export
#'

RowMax <- function(x){
    mxs= apply(x, MARGIN=c(1), max)
    as.matrix(mxs)
}
