#' Vectorize a Piecewise Function Using Logical Indexing
#'
#' This function applies a piecewise calculation to a numeric vector `x` using logical indexing. The function is defined for specific intervals of `x`, and different calculations are performed depending on which interval each element of `x` falls into.
#'
#' @param x A numeric vector for which the piecewise function is to be applied.
#'
#' @return A numeric vector where each element is the result of the piecewise function applied to the corresponding element of `x`. The piecewise function is defined as follows:
#' - 0 for `x < 0`
#' - 15 for `0 <= x < 0.5`
#' - 2 for `0.5 <= x < 10`
#' - `8 * log(x - 9, base = 2) + 2` for `10 <= x < 15`
#' - `8 * log(6, base = 2) + 2` for `15 <= x <= 20`
#' - 0 for `x > 20`
#'
#' @examples
#' test_vector <- c(-1, 0.25, 5, 12, 16, 21)
#' result <- logical_index_vectorized(test_vector)
#' print(result)
#'
#' @export
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
