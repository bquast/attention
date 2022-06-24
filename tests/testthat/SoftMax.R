# generate vector of integers
set.seed(0)
V = c(floor(runif(9, min=-3, max=3)))

# apply the SoftMax() function to V
sV <- SoftMax(V)

test_that("SoftMax", {
  expect_equal(sV, c(0.229511038, 0.004203641, 0.011426682, 0.031060941 ,0.229511038, 0.004203641, 0.229511038, 0.229511038, 0.031060941))
})
