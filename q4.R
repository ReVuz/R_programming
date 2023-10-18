#Write a program to generate a random password for a user. The password should
#include a mix of uppercase letters, lowercase letters, digits, and special characters.
#Allow the user to specify the length of the password.

# Read the length of the password from the user
length <- as.integer(readline("Enter the length of the password: "))

# Define a vector of possible characters for the password
chars <- c(LETTERS, letters, 0:9, strsplit("!@#$%^&*()_+-=[]{};:'\",.<>/?\\|", "")[[1]])

# Sample random characters from the vector with replacement
password <- paste(sample(chars, length, replace = TRUE), collapse = "")

# Print the password
cat("The password is:", password, "\n")
