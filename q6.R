# Write a program to check whether a given number is prime or not. Implement this using
# both loops and functions. Additionally, allow the user to input a range and identify all
# prime numbers within that range.

# Function to check if a number is prime
is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  if (n <= 3) {
    return(TRUE)
  }
  if (n %% 2 == 0 || n %% 3 == 0) {
    return(FALSE)
  }
  i <- 5
  while (i * i <= n) {
    if (n %% i == 0 || n %% (i + 2) == 0) {
      return(FALSE)
    }
    i <- i + 6
  }
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

# Function to find prime numbers within a range

find_primes_in_range <- function(start, end) {
  prime_numbers <- c()
  for (num in start:end) {
    if (is_prime(num)) {
      prime_numbers <- c(prime_numbers, num)
    }
  }
  return(prime_numbers)
}

# Input range from the user

start_range <- as.integer(readline("Enter the start of the range: "))
end_range <- as.integer(readline("Enter the end of the range: "))

if (start_range >= 2) {
  primes_in_range <- find_primes_in_range(start_range, end_range)
  if (length(primes_in_range) > 0) {
    cat("Prime numbers in the range:", primes_in_range, "\n")
  } else {
    cat("No prime numbers in the specified range.\n")
  }
} else {
  cat("Prime numbers start from 2 and above. Please enter a valid range.\n")
}
