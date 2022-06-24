#' @name ComputeWeights
#' @title SoftMax sigmoid function
#' @param scores input value (numeric)
#' @return output value (numeric)
#' @export
#' @examples
#' # Set up a scores matrix
#' scores <- matrix(c( 6,  4, 10,  5,
#'                     4,  6, 10,  6,
#'                    10, 10, 20, 11,
#'                     3,  1,  4,  2),
#'                  nrow  = 4,
#'                  ncol  = 4,
#'                  byrow = TRUE)
#'
#' # Compute the weights based on the scores matrix
#' ComputeWeights(scores)
#'
#' # this outputs
#' #            [,1]       [,2]      [,3]       [,4]
#' # [1,] 0.10679806 0.03928881 0.7891368 0.06477630
#' # [2,] 0.03770440 0.10249120 0.7573132 0.10249120
#' # [3,] 0.00657627 0.00657627 0.9760050 0.01084244
#' # [4,] 0.27600434 0.10153632 0.4550542 0.16740510
#'

ComputeWeights <- function(scores) {
  size = dim(scores)[1]
  maxs = RowMax(scores)
  weights = matrix(0, nrow=4, ncol=4)
  for (i in 1:size) {
    weights[i,] = SoftMax((scores[i,]-maxs[i,]) / size ^ 0.5)
  }
  return(weights)
}
