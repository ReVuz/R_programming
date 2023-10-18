# Develop a program in R to read a paragraph of text and perform the following tasks:
# a. Count the total number of words.
# b. Calculate the average word length.
# c. Identify and print the longest word.
#d. Replace all occurrences of a specific word with another word of your choice.

# Read a paragraph of text from the user
text <- readline("Enter a paragraph of text: ")

# Split the text into words by whitespace
words <- strsplit(text, "\\s+")[[1]]

# Count the total number of words
word_count <- length(words)
cat("The total number of words is", word_count, "\n")

# Calculate the average word length
word_length <- nchar(words)
avg_length <- mean(word_length)
cat("The average word length is", avg_length, "\n")

# Identify and print the longest word
longest_word <- words[which.max(word_length)]
cat("The longest word is", longest_word, "\n")

# Replace all occurrences of a specific word with another word of your choice
old_word <- readline("Enter a word to replace: ")
new_word <- readline("Enter a new word: ")
new_text <- gsub(old_word, new_word, text)
cat("The new text is:", new_text, "\n")

