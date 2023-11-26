# For loop version
for_loop_vectorized <- function(x) {
  result <- numeric(length(x))
  for (i in seq_along(x)) {
    result[i] <- non_vectorized_function(x[i])
  }
  return(result)
}

# Purrr map version
purrr_map_vectorized <- function(x) {
  map_dbl(x, non_vectorized_function)
}

# Apply function version
apply_vectorized <- function(x) {
  sapply(x, non_vectorized_function)
}

logical_index_vectorized <- function(x) {
  y <- numeric(length(x))
  y[x < 0] <- 0
  y[x >= 0 & x < 0.5] <- 15
  y[x >= 0.5 & x < 10] <- 2
  y[x >= 10 & x < 15] <- 8 * log(x[x >= 10 & x < 15] - 9, base = 2) + 2
  y[x >= 15 & x <= 20] <- 8 * log(6, base = 2) + 2
  y[x > 20] <- 0
  return(y)
}

# New class
evaluate_f <- function(x) {
  # Evaluate the function for the input vector
  values <- logical_index_vectorized(x)
  # Set the class of the result
  class(values) <- 'evaluation_of_f'
  return(values)
}

#integration function
integrate_f <- function(a, b) {
  integrate(logical_index_vectorized, lower = a, upper = b)$value
}


# Function to compute volume from 10 to b
volume_to_b <- function(b) {
  integrate(function(x) pi * logical_index_vectorized(x)^2, lower = 10, upper = b)$value - 200
}
