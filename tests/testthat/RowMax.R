# generate a matrix of integers (also works for floats)
set.seed(0)
M = matrix(floor(runif(9, min=0, max=3)),
           nrow=3,
           ncol=3)

max_M = as.matrix( RowMax(M) )
