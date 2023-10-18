#Develop a program to generate the Fibonacci series, but with a twist. Allow the user to
#input the number of terms and generate the series where each term is the sum of the
#last three terms.

# Read the number of terms from the user
n <- as.integer(readline("Enter the number of terms: "))

# Initialize the first three terms of the series
a <- 0
b <- 1
c <- 1

# Print the first three terms
cat(a, b, c, sep = " ")

# Loop over the remaining terms
for (i in 4:n) {
  # Calculate the next term as the sum of the last three terms
  d <- a + b + c
  # Print the next term
  cat(d, sep = " ")
  # Update the last three terms
  a <- b
  b <- c
  c <- d
}
