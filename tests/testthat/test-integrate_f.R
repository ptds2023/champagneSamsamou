library(testthat)
library(champagneSamsamou)

test_that("integrate_f throws an error for character inputs", {
  # Test with character strings as input for a and b
  expect_error(integrate_f(a, b))

  # Optionally, test with one character and one numeric input
  expect_error(integrate_f(a, 1))
  expect_error(integrate_f(1, b))
})
