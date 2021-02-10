# Calculator

2+2

# Variables

var1 <- 1
var2 <- 2

var1 + var2


# Vectors (c is for concatenated; link (things) together in a chain or series)

vec <- c(2, 3, 5)

vec

mean(vec)
sd(vec)
sum(vec)


print("Hello, world!")

# Define a new function
hello <- function() {
  print("Hello, world!")
}

# Execute the function
hello()

# See what's in the function
hello

# Customize the message
hello_custom <- function(name) {
  print(paste0("Hello, ", name))
}

# Try running
hello_custom()

# Why did it fail?

# Try again
hello_custom("Casey")

# Fix the function by adding a default

hello_custom <- function(name="world") {
  print(paste0("Hello, ", name))
}


names <- c('Casey', 'Houston', 'Jessica', 'Bailey')

# For loop
for (name in names) {
  print(name)
}


# For loop in function
hello_multiple <- function(names) {
  for (name in names) {
    print(paste0("Hello, ", name))
  }
}


hello_multiple(names)


# If statement (note the "==")

for (name in names) {
  if (name == "Jessica") {
    print("Hello, weirdo!")
  }
  else {
  print(paste0("Hello, ", name))
  }
}

# Note: the above example is an antipattern, as the name is within the code itself

weirdos <- c("Jessica", "Bailey")

hello_weirdos <- function(names, weirdos) {
  for (name in names) {
    if (name %in% weirdos) {
      print("Hello, weirdo!")
    }
    else {
      print(paste0("Hello, ", name))
    }
  }
}

hello_weirdos(names=names, weirdos=weirdos)
