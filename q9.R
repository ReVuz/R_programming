#Design a program to read a string and compress it using run-length encoding. In
#run-length encoding, consecutive repeated characters are replaced with a single
#character followed by the count of occurrences.

# Read a string from the user
string <- readline("Enter a string: ")

# Initialize an empty vector to store the compressed characters
compressed <- vector()

# Initialize the current character and count to the first character and 1
current_char <- substr(string, 1, 1)
current_count <- 1

# Loop over the remaining characters of the string
for (i in 2:nchar(string)) {
  # Get the next character
  next_char <- substr(string, i, i)
  # Check if the next character is equal to the current character
  if (next_char == current_char) {
    # Increment the current count
    current_count <- current_count + 1
  } else {
    # Append the current character and count to the compressed vector
    compressed <- c(compressed, current_char, current_count)
    # Update the current character and count to the next character and 1
    current_char <- next_char
    current_count <- 1
  }
}

# Append the last character and count to the compressed vector
compressed <- c(compressed, current_char, current_count)

# Join the compressed characters into a single string
compressed <- paste(compressed, collapse = "")

# Print the compressed string
cat("The compressed string is:", compressed, "\n")
