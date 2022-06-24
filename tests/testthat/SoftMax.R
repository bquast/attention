# generate vector of integers
set.seed(0)
V = c(floor(runif(9, min=-3, max=3)))

# apply the SoftMax() function to V
sV <- SoftMax(V)
