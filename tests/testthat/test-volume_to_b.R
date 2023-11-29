library(testthat)
library(champagneSamsamou)

test_that("volume_to_b throws an error for invalid type", {
  expect_error(volume_to_b(NULL))
})
