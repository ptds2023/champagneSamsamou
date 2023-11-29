#' @title Vectorized Function Using For Loop
#' @author Samy Maurer
#'
#' This function applies a non-vectorized function `non_vectorized_function` to each element of a vector `x` using a for loop, effectively vectorizing the operation.
#'
#' @param x A numeric vector to which the `non_vectorized_function` will be applied.
#'
#' @return A numeric vector of the same length as `x`, where each element is the result of applying `non_vectorized_function` to the corresponding element of `x`.
#'
#' @examples
#' test_vector <- 1:10
#' result <- for_loop_vectorized(test_vector)
#' print(result)
#'
#' @export
for_loop_vectorized <- function(x) {
  result <- numeric(length(x))
  for (i in seq_along(x)) {
    result[i] <- non_vectorized_function(x[i])
  }
  return(result)
}
