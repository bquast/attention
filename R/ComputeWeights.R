#' @name ComputeWeights
#' @title SoftMax sigmoid function
#' @param scores input value (numeric)
#' @param K Key values matrix (numeric)
#' @return output value (numeric)
#' @export
#'

ComputeWeights <- function(scores, K) {
  size = dim(scores)[1]
  maxs = RowMax(scores)
  weights = matrix(0, nrow=4, ncol=4)
  for (i in 1:size) {
    weights[i,] = SoftMax((scores[i,]-maxs[i,]) / ncol(K) ^ 0.5)
  }
  return(weights)
}
