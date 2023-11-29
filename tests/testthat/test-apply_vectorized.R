library(testthat)
library(champagneSamsamou)

test_that("apply_vectorized throws an error for character input", {
  input_vector <- c("a", "b", "c")
  expect_error(apply_vectorized(input_vector))
})
