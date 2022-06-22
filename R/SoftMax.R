#' @name SoftMax
#' @title SoftMax sigmoid function
#' @param x input value (numeric)
#' @return output value (numeric)
#' @export
#'

SoftMax <- function(x)
  exp(x)/sum(exp(x))
