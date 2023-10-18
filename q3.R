#Develop a program to read student records with their names, ages, and grades.
#Implement validation checks:
#a. Ensure age is a positive integer.
#b. Ensure grade is a valid letter grade (A, B, C, D, F).
#c. Calculate and display the average age of students with valid records.

# Read the number of student records from the user
n <- as.integer(readline("Enter the number of student records: "))

# Initialize empty vectors to store the names, ages, and grades
names <- vector()
ages <- vector()
grades <- vector()

# Loop over the number of student records
for (i in 1:n) {
  # Read the name, age, and grade of each student
  name <- readline(paste("Enter the name of student", i, ": "))
  age <- as.integer(readline(paste("Enter the age of student", i, ": ")))
  grade <- readline(paste("Enter the grade of student", i, ": "))
  
  # Validate the age and grade
  valid_age <- age > 0 # Age must be a positive integer
  valid_grade <- grade %in% c("A", "B", "C", "D", "F") # Grade must be a valid letter grade
  
  # Check if both age and grade are valid
  if (valid_age && valid_grade) {
    # Append the name, age, and grade to the vectors
    names <- c(names, name)
    ages <- c(ages, age)
    grades <- c(grades, grade)
  } else {
    # Print an error message
    cat("Invalid record for student", i, "\n")
  }
}

# Calculate and display the average age of students with valid records
avg_age <- mean(ages)
cat("The average age of students with valid records is", avg_age, "\n")
