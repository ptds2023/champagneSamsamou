% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logical_index_vectorized.R
\name{logical_index_vectorized}
\alias{logical_index_vectorized}
\title{Vectorize a Piecewise Function Using Logical Indexing}
\usage{
logical_index_vectorized(x)
}
\arguments{
\item{x}{A numeric vector for which the piecewise function is to be applied.}
}
\value{
A numeric vector where each element is the result of the piecewise function applied to the corresponding element of `x`. The piecewise function is defined as follows:
- 0 for `x < 0`
- 15 for `0 <= x < 0.5`
- 2 for `0.5 <= x < 10`
- `8 * log(x - 9, base = 2) + 2` for `10 <= x < 15`
- `8 * log(6, base = 2) + 2` for `15 <= x <= 20`
- 0 for `x > 20`
}
\description{
Vectorize a Piecewise Function Using Logical Indexing
}
\examples{
test_vector <- c(-1, 0.25, 5, 12, 16, 21)
result <- logical_index_vectorized(test_vector)
print(result)

}
\author{
Samy Maurer

This function applies a piecewise calculation to a numeric vector `x` using logical indexing.
}
