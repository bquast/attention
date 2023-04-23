#' @name SoftMax
#' @title SoftMax sigmoid function
#' @param x input value (numeric)
#' @return output value (numeric)
#' @export
#' @examples
#' # create a vector of integers (also works for non-integers)
#' set.seed(0)
#' V = c(floor(runif(9, min=-3, max=3)))
#' print(V)
#'
#' # this outputs
#' # [1]  2 -2 -1  0  2 -2  2  2  0
#'
#' # apply the SoftMax() function to V
#' sV <- SoftMax(V)
#' print(sV)
#'
#' # this outputs
#' # [1] 0.229511038 0.004203641 0.011426682 0.031060941
#' # 0.229511038 0.004203641 0.229511038 0.229511038 0.031060941
#'

SoftMax <- function(x) {
  exp_x <- exp(x - max(x))
  exp_x / sum(exp_x)
}
