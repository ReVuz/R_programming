#Develop a program to calculate the sum of the series: 1 - 2/3 + 3/5 - 4/7 + ... up to a
#specified number of terms. Allow the user to input the number of terms in the series

# Read the number of terms from the user
n <- as.integer(readline("Enter the number of terms: "))

# Initialize the sum to zero
sum <- 0

# Loop over the number of terms
for (i in 1:n) {
  # Calculate the sign of the term (-1)^i
  sign <- (-1)^(i + 1)
  # Calculate the numerator of the term i
  num <- i
  # Calculate the denominator of the term 2*i - 1
  den <- 2 * i - 1
  # Calculate the value of the term sign * num / den
  term <- sign * num / den
  # Add the term to the sum
  sum <- sum + term
}

# Print the sum of the series
cat("The sum of the series is", sum, "\n")
