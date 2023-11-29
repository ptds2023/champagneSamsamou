library(testthat)
library(champagneSamsamou)


test_that("non_vectorized_function handles edge cases", {
  expect_equal(non_vectorized_function(0), 15)
  expect_equal(non_vectorized_function(0.5), 2)
})

test_that("non_vectorized_function throws an error for character input", {
  expect_error(non_vectorized_function("a character string"))
})
