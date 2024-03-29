#' @title Computation of the integral of a Vectorized Function
#' @author Samy Maurer
#'
#' This function computes the integral of the `logical_index_vectorized` function over a specified interval [a, b]. It uses the `integrate` function from R.
#'
#' @param a The lower limit of the interval over which to integrate.
#' @param b The upper limit of the interval over which to integrate.
#'
#' @return The computed integral value of the `logical_index_vectorized` function over the interval [a, b].
#'
#' @examples
#' # Example: Compute the integral from 10 to 20
#' result <- integrate_f(10, 20)
#' print(result)
#' @importFrom stats integrate
#' @export
integrate_f <- function(a, b) {
  integrate(logical_index_vectorized, lower = a, upper = b)$value
}
