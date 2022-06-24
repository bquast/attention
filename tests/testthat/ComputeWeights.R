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

check <- matrix(c(0.10679806, 0.03928881, 0.7891368, 0.06477630,
                  0.03770440, 0.10249120, 0.7573132, 0.10249120,
                  0.00657627, 0.00657627, 0.9760050, 0.01084244,
                  0.27600434, 0.10153632, 0.4550542, 0.16740510),
                nrow=4,
                ncol=4,
                byrow=T)

test_that("ComputeWeights", {
  expect_equal(weights,  check, tolerance = 1e-3)
})

