#Write a program to reverse the order of elements in a given list. Implement this without
#using any built-in functions or loops.

reverse_list <- function(my_list) {
  if (length(my_list) == 0) {
    return(my_list)
  } else {
    first_element <- my_list[1]
    rest_of_list <- my_list[-1]
    reversed_rest <- reverse_list(rest_of_list)
    return(c(reversed_rest, first_element))
  }
}

#Example usage:
original_list <- list(1, 2, 3, 4, 5)
reversed_list <- reverse_list(original_list)
print(reversed_list)