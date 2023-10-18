# Read a sentence from the user
sentence <- readline("Enter a sentence: ")

# Read the shift value from the user
shift <- as.integer(readline("Enter the shift value: "))

# Define a function to encrypt a single character
encrypt_char <- function(c, shift) {
  # Check if the character is alphabetic
  if (grepl("[A-Za-z]", c)) {
    # Get the ASCII code of the character
    code <- as.integer(charToRaw(c))
    # Check if the character is uppercase or lowercase
    if (grepl("[A-Z]", c)) {
      # Shift the code within the range of 65 to 90
      code <- (code - 65 + shift) %% 26 + 65
    } else {
      # Shift the code within the range of 97 to 122
      code <- (code - 97 + shift) %% 26 + 97
    }
    # Return the encrypted character
    return(rawToChar(as.raw(code)))
  } else {
    # Return the character as it is
    return(c)
  }
}

# Encrypt the sentence by applying the function to each character
encrypted <- paste(sapply(strsplit(sentence, "")[[1]], encrypt_char, shift), collapse = "")

# Print the encrypted sentence
cat("The encrypted sentence is:", encrypted, "\n")
