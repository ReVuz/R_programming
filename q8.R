#Write a program that reads a string and checks if it's a palindrome. A palindrome is a
#string that reads the same forwards and backwards, ignoring spaces and punctuation.

# Read a string from the user
string <- readline("Enter a string: ")

# Remove spaces and punctuation from the string
string <- gsub("[[:space:][:punct:]]", "", string)

# Convert the string to lowercase
string <- tolower(string)

# Reverse the string
reverse <- rev(strsplit(string, "")[[1]])

# Join the reversed characters
reverse <- paste(reverse, collapse = "")

# Check if the string and the reverse are equal
palindrome <- string == reverse

# Print the result
if (palindrome) {
  cat(string, "is a palindrome.\n")
} else {
  cat(string, "is not a palindrome.\n")
}
