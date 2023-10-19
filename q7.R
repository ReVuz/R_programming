# Develop a program to generate the Fibonacci series, but with a twist. Allow the user to
# input the number of terms and generate the series where each term is the sum of the
# last three terms.


# Function to print the Fibonacci sequence using a loop
print_fibonacci <- function(n) {
  a <- 0
  b <- 1
  c <- 1
  
  cat("Fibonacci Sequence:")
  for (i in 1:n) {
    cat(a, " ")
    next_num <- a + b + c
    a <- b
    b <- c
    c <- next_num
  }
}

#Input the number of terms from the user
number_of_terms <- as.integer(readline("Enter the number of terms in the series: "))
print_fibonacci(number_of_terms)
