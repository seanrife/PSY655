is_prime <- function(num) {
  if (num == 2) {
    TRUE
  } else if (any(num %% 2:(num-1) == 0)) {
    FALSE
  } else { 
    TRUE
  }
}

for (number in 1000000:999999999999999) {
  if (is_prime(number)) {
    print(number)
  }
}