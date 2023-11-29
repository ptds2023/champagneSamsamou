#' @title Non-Vectorized Piecewise Function
#' @author Samy Maurer
#'
#' This function is a non-vectorized implementation of a piecewise function. It applies different calculations to the input `x` based on professor conditions.
#'
#' @param x A numeric value for which the piecewise calculation is applied.
#'
#' @return The function returns a numeric value with those conditions:
#' - 0 if `x < 0`
#' - 15 if `0 <= x < 0.5`
#' - 2 if `0.5 <= x < 10`
#' - `8 * log(x - 9, base = 2) + 2` if `10 <= x < 15`
#' - `8 * log(6, base = 2) + 2` if `15 <= x <= 20`
#' - 0 if `x > 20`
#'
#' @examples
#' result1 <- non_vectorized_function(-1)
#' result2 <- non_vectorized_function(0.25)
#' result3 <- non_vectorized_function(12)
#' print(result1)
#' print(result2)
#' print(result3)
#'
#' @export
non_vectorized_function <- function(x) {
  if (!is.numeric(x)) {
    stop("Input must be numeric")
  }

  if (x < 0) {
    return(0)
  } else if (x < 0.5) {
    return(15)
  } else if (x < 10) {
    return(2)
  } else if (x < 15) {
    return(8 * log(x - 9, base = 2) + 2)
  } else if (x <= 20) {
    return(8 * log(6, base = 2) + 2)
  } else {
    return(0)
  }
}
