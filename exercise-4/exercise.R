# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(s1, s2){
  l1 <- nchar(s1)
  l2 <- nchar(s2)
  abs(l1 - l2) >= min(l1, l2)
} 

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("hi", "hello")
is_twice_as_long("hello", "hi")
is_twice_as_long("hello", "hallo")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(s1, s2) {
  l1 <- nchar(s1)
  l2 <- nchar(s2)
  if (l1 == l2) {
    return("Your strings are the same length!")
  }
  else if (l1 > l2) {
    return(paste0("Your first string is longer by ", l1 - l2, " characters"))
  }
  else {
    return(paste0("Your second string is longer by ", l2 - l1, " characters"))
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("hello", "hallo")
describe_difference("hi", "hello")
describe_difference("hello", "hi")
