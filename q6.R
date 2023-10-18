#Write a program to check whether a given number is prime or not. Implement this using
#both loops and functions. Additionally, allow the user to input a range and identify all
#prime numbers within that range.

# Define a function to check if a number is prime
is_prime <- function(n) {
  # Check if the number is less than 2
  if (n < 2) {
    # Return FALSE
    return(FALSE)
  }
  # Check if the number is 2
  if (n == 2) {
    # Return TRUE
    return(TRUE)
  }
  # Check if the number is even
  if (n %% 2 == 0) {
    # Return FALSE
    return(FALSE)
  }
  # Loop over the odd numbers from 3 to the square root of n
  for (i in seq(3, sqrt(n), by = 2)) {
    # Check if the number is divisible by i
    if (n %% i == 0) {
      # Return FALSE
      return(FALSE)
    }
  }
  # Return TRUE
  return(TRUE)
}

# Read a number from the user
number <- as.integer(readline("Enter a number: "))

# Check if the number is prime using the function
prime <- is_prime(number)

# Print the result
if (prime) {
  cat(number, "is a prime number.\n")
} else {
  cat(number, "is not a prime number.\n")
}

# Read a range from the user
lower <- as.integer(readline("Enter the lower bound of the range: "))
upper <- as.integer(readline("Enter the upper bound of the range: "))

# Print the prime numbers within the range using the function
cat("The prime numbers within the range are:\n")
for (i in lower:upper) {
  if (is_prime(i)) {
    cat(i, "\n")
  }
}
