library(testthat)
library(champagneSamsamou)


test_that("for_loop_vectorized throws an error for character input", {
  input_vector <- c("a", "b", "c")

  # Test that an error is thrown
  expect_error(for_loop_vectorized(input_vector))
})
