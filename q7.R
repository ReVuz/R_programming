# Develop a program to generate the Fibonacci series, but with a twist. Allow the user to
# input the number of terms and generate the series where each term is the sum of the
# last three terms.


generate_series <- function(n) {
  series <- numeric(n)
  
#  Initialize the first three terms
  series[1] <- 0
  series[2] <- 1
  series[3] <- 2
  
#  Generate subsequent terms
  for (i in 4:n) {
    series[i] <- series[i - 1] + series[i - 2] + series[i - 3]
  }
  
  return(series)
}

#Input the number of terms from the user
n <- as.integer(readline("Enter the number of terms in the series: "))

if (n < 1) {
  cat("Please enter a valid number of terms greater than or equal to 1.\n")
} else {
  series <- generate_series(n)
  cat("The series with", n, "terms is:\n")
  cat(series, "\n")
}