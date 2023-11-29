# My Package : champagneSamsamou

champagneSamsamou is an R package developed as part of a homework assignment, designed to provide tools for calculating the volume of champagne in glasses and for simulating party scenarios to manage champagne effectively. The package demonstrates various vectorization methods and numerical integration techniques in R.

## Objectives
The primary objectives of this package include:

Volume Calculation: Implement functions to calculate the volume of champagne in a glass using different mathematical approaches.
Method Demonstration: Showcase the use of vectorization and numerical integration in R.

## Methodology
The package comprises several functions, each demonstrating a unique approach to problem-solving:

Vectorization Functions: Utilize different R techniques to vectorize non-vectorized functions.
Numerical Integration: Apply numerical integration methods to calculate volumes.

## Installation
To install the latest version of champagneSamsamou from GitHub, use:

```r
install.packages("devtools")
devtools::install_github("Samsamou/champagneSamsamou")
```


## Usage
Here's a basic example of how to use champagneSamsamou:

```r
library(champagneSamsamou)

# Example of using a vectorization function
result <- for_loop_vectorized(1:10)

# Calculate the volume for a specific glass size
volume <- volume_to_b(15)

```

# Contributing
Contributions to my package are welcome. Please ensure that your code adheres to the project's style and standards.
