#' @name ComputeWeights
#' @title SoftMax sigmoid function
#' @param scores input value (numeric)
#' @return output value (numeric)
#' @export
#'

ComputeWeights <- function(scores) {
  size = dim(scores)[1]
  weights = matrix(0, nrow=4, ncol=4)
  for (i in 1:size) {
    weights[i,] = SoftMax((scores[i,]-maxs[i,]) / ncol(K) ^ 0.5)
  }
  return(weights)
}
