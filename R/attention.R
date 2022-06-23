#' @name attention
#' @title Self-Attention Algorithm
#' @author Bastiaan Quast \email{bquast@@gmail.com}
#' @description Implements functions for the Self-Attention algorithm, and demonstrates with vignettes of increasing depth how to construct the Self-Attention algorithm..
#' @seealso https://qua.st/attention
#' @references {https://qua.st/attention}
#' @examples
#' # encoder representations of four different words
#' word_1 = matrix(c(1,0,0), nrow=1)
#' word_2 = matrix(c(0,1,0), nrow=1)
#' word_3 = matrix(c(1,1,0), nrow=1)
#' word_4 = matrix(c(0,0,1), nrow=1)
#'
#' # stacking the word embeddings into a single array
#' words = rbind(word_1,
#'               word_2,
#'               word_3,
#'               word_4)
#'
#'# generating the weight matrices
#'set.seed(0)
#'W_Q = matrix(floor(runif(9, min=0, max=3)),nrow=3,ncol=3)
#'W_K = matrix(floor(runif(9, min=0, max=3)),nrow=3,ncol=3)
#'W_V = matrix(floor(runif(9, min=0, max=3)),nrow=3,ncol=3)
#'
#'# generating the queries, keys and values
#'Q = words %*% W_Q
#'K = words %*% W_K
#'V = words %*% W_V
#'
#'# scoring the query vectors against all key vectors
#'scores = Q %*% t(K)
#'
#'# calculate the max for each row of the scores matrix
#'maxs = as.matrix(apply(scores, MARGIN=1, FUN=max))
#'
#'# initialize weights matrix
#'weights = matrix(0, nrow=4, ncol=4)
#'
#'# computing the weights by a softmax operation
#'for (i in 1:dim(scores)[1]) {
#'  weights[i,] = exp((scores[i,]-maxs[i,]) /
#'                ncol(K) ^ 0.5)/sum(exp((scores[i,]-maxs[i,]) / ncol(K) ^ 0.5))
#'}
#'
#'# computing the attention by a weighted sum of the value vectors
#'attention = weights %*% V
#'
#'print(attention)
NULL
