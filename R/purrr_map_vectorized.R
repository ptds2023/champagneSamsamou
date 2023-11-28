#' Vectorize a Function Using `purrr::map_dbl`
#'
#' This function vectorizes a non-vectorized function by applying it to each element of a numeric vector `x` using the `purrr::map_dbl` function.`non_vectorized_function` must be defined and takes a single numeric value as input.
#'
#' @param x A numeric vector to which the `non_vectorized_function` will be applied.
#'
#' @return A numeric vector where each element is the result of applying `non_vectorized_function` to the corresponding element of `x`.
#'
#' @examples
#' # Assuming non_vectorized_function is defined and takes a single numeric value
#' test_vector <- 1:10
#' result <- purrr_map_vectorized(test_vector)
#' print(result)
#'
#' @export
#' @importFrom purrr map_dbl
purrr_map_vectorized <- function(x) {
  map_dbl(x, non_vectorized_function)
}
