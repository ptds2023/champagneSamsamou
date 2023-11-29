#' Calculate Adjusted Volume Up to a Limit `b`
#'
#' This function computes the volume of Champagne in a glass for an upper limit `b`, with a constant factor. It integrates the square of the `logical_index_vectorized` function times `pi` over the interval [10, b] and subtracts 200 from the result.
#'
#' @param b The upper limit of the glass fill level to calculate the volume. Must be > 10.
#'
#' @return The adjusted volume of champagne in the glass up to the fill level `b`, subtracting a constant of 200.
#'
#' @examples
#' # Example: Calculate the volume for b = 15
#' volume <- volume_to_b(15)
#' print(volume)
#'
#' @importFrom stats integrate
#'
#' @export
volume_to_b <- function(b) {
  integrate(function(x) pi * logical_index_vectorized(x)^2, lower = 10, upper = b)$value - 200
}
