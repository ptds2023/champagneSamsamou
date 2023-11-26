#' Vectorize a Function Using `sapply`
#'
#' This function vectorizes a non-vectorized function by applying it to each element of a numeric vector `x` using the `sapply` function. It is important that `non_vectorized_function` is defined and takes a single numeric value as input.
#'
#' @param x A numeric vector to which the `non_vectorized_function` will be applied element-wise.
#'
#' @return A numeric vector where each element is the result of applying `non_vectorized_function` to the corresponding element of `x`. The function attempts to simplify the result to the most basic data structure possible (vector, matrix, or higher-dimensional array).
#'
#' @examples
#' # Assuming non_vectorized_function is defined and takes a single numeric value
#' test_vector <- 1:10
#' result <- apply_vectorized(test_vector)
#' print(result)
#'
#' @export
apply_vectorized <- function(x) {
  sapply(x, non_vectorized_function)
}
