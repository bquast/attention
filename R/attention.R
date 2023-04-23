#' @name attention
#' @title Attnention mechanism
#' @param Q queries
#' @param K keys
#' @param V values
#' @param mask optional mask
#' @return attention values
#' @export

attention <- function(Q, K, V, mask = NULL) {
  dk <- ncol(K)
  scores <- Q %*% t(K) / sqrt(dk)

  if (!is.null(mask)) {
    scores <- scores * mask + (1 - mask) * (-1e10)
  }

  attention_weights <- t(apply(scores, 1, SoftMax))  # Transpose the result after applying softmax

  if (any(is.infinite(attention_weights))) {
    attention_weights[is.infinite(attention_weights)] <- 0
  }

  output <- attention_weights %*% V

  return(list(output, attention_weights))
}
