library(psych)

# import psych package


# This gives us the average across all rows
rowMeans(df)

# But is this what we want? We also have gender and age....

rowMeans(df[,1:10]) # Note the use of the comma - indicates we are slicing by column

# Let's explore the notation a bit.
df[1:10,1:10]

# But again, is that what we want? 

means <- rowMeans(df[,1:10])

# we can add it back to the dataframe
df <- cbind(df, means)

# or just do it like this to add directly to the df

df$avg <- rowMeans(df[,1:10])

# Let's get some basic descriptives
describe(df)

# Now we can run a regression: are SCS scores higher among older people?

# Kinda goofy as we're not doing any assumption checks - more on that later, but here you go....
model1 <- lm(avg~age, df)
summary(model1)

model1$model

#What if we want to only examine men? (coded as 1)
model1_men <- lm(avg~age, df[df$gender==1,]) # Note limiting by rows
summary(model1_men)

# Clean house
rm(list=ls())


# Let's move on to another example: the RSE dataset
# Look at documentation: what do we need to do?
# - Remove "no answer" (coded as 0)
# - Reverse-score Q3, Q5, Q8, Q9, Q10

# First, import raw data to df

# Now switch 0 to NA (NA meaning missing)
df[df==0] <- NA


columnsToReverse <- c('Q3', 'Q5', 'Q8', 'Q9', 'Q10')
df[,columnsToReverse] <- 5-df[,columnsToReverse]
# Note that we create the columsToReverse var because we use it twice (good practice)


#ASK: normally we would not want to put reversed variables back into the data.... why is it ok this time?


alpha(df[,1:10])



describeBy(df~gender)

df$sex[df$gender==1] <- 'MALE'
df$sex[df$gender==2] <- 'FEMALE'


describeBy(df~sex)

df$avg <- rowMeans(df[,1:10])

# Remove rows with NA
df_complete <- df[complete.cases(df), ]

df$avg <- rowMeans(df[,1:10])

mean(df$avg) # wait, wut?

mean(df$avg, na.rm=TRUE)

hist(df$avg)


new_mean <- function(list) {
  total = 0
  list = na.omit(list)
  N = length(list)
  for (i in list) {
    print(i)
    total = total + i
    print(total)
  }
  mean = total/N
  return(mean)
}






new_mean2 <- function(list) {
  total = 0
  list = na.omit(list)
  N = length(list)
  total = sum(list)
  mean = total/N
  return(mean)
}


mean_narm <- function(x){
  return(mean(x, na.rm=T))
}

# TRY IT YOURSELF! Write a function that takes two numbers and adds them together












add_two <- function(x,y) {
  return(x+y)
}








# Write a function that accepts a vector of numbers and adds them together













add_all <- function(x) {
  sum <- 0
  for (i in x) {
    sum = sum + i
  }
  return(sum)
}







add_all <- function(x) {
  return(sum(x))
}











# Write a function that takes two lists of names and sees if anyone is in both











check_names <- function(list1, list2) {
  for (name1 in list1) {
    for (name2 in list2) {
      if (name1 == name2) {
        print(name1)
      }
    }
  }
}



# Better:
check_names <- function(list1, list2) {
  for (name1 in list1) {
    if (name1 %in% list2) {
      print(name1)
    }
  }
}

