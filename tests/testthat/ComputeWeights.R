# setup scores matrix
scores <- matrix(c( 6,  4, 10,  5,
                    4,  6, 10,  6,
                    10, 10, 20, 11,
                    3,  1,  4,  2),
                 nrow  = 4,
                 ncol  = 4,
                 byrow = TRUE)

# Compute the weights based on the scores matrix
weights <- ComputeWeights(scores)
