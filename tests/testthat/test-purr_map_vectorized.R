library(testthat)
library(champagneSamsamou)

test_that("purrr_map_vectorized throws an error for character input", {
  input_vector <- c("a", "b", "c")
  expect_error(purrr_map_vectorized(input_vector))
})
