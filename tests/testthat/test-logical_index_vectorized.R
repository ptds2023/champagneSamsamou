library(testthat)
library(champagneSamsamou)

test_that("logical_index_vectorized throws an error for character input", {
  input_vector <- c("a", "b", "c")
  expect_error(logical_index_vectorized(input_vector))
})
