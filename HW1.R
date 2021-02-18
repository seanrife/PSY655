
age_recode <- function(age) {
  if (age < 18) {
    return(NA)
  }
  else if (age >= 18 & age <= 29) {
    return(1)
  }
  else if (age >= 30 & age <= 39) {
    return(2)
  }
  else if (age >= 40 & age <= 49) {
    return(3)
  }
  else if (age >= 50 & age <= 59) {
    return(4)
  }
  else if (age >= 60 & age <= 65) {
    return(5)
  }
  else if (age >= 66) {
    return(6)
  }
}


so_categorize <- function(response){
  het_list <- c('heterosexual', 'straight', 'hetero')
  hom_list <- c('homosexual', 'gay', 'lesbian')
  bi_list <- c('bi', 'bisexual', 'heteroflexible', 'homoflexible', 'everyone is hot')
  pan_list <- c('pan', 'pansexual', 'pan-sexual')
  asex_list <- c('asexual', 'nothing', 'sex is gross', 'ewwwwwwww')
  
  response <- tolower(response)
  
  if (response %in% het_list) {
    return("Heterosexual")
  }
  else if (response %in% hom_list) {
    return("Homosexual")
  }
  else if (response %in% bi_list) {
    return("Bisexual")
  }
  else if (response %in% pan_list) {
    return("Pansexual")
  }
  else if (response %in% asex_list) {
    return("Asexual")
  }
  else {
    return("Other")
  }
}
