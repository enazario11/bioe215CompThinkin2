first_last_chr <- function(s){
  first_chr <- substr(s, 1, 1)
  last_chr <- substr(s, nchar(s), nchar(s))
  ### Pause ###
  result <- paste(first_chr, last_chr, sep = "")
  return(result)
}


text <- "Amazing!"
first_last_chr(text)

s <- 10 
first_last_chr(text)

# I want my output to be 'My'
text <- "May"
first_last_chr(text)
first_last_chr("May") #can also do directly to character string

#tidyverse tangent
library(tidyverse)
df <- tibble(a = 1:3)
filter(mutate(df, a2 = a*2), a2 < 5) #gross, but a function argument can be a call to another function, i.e., filter is first calling mutate

#having multiple parameters 
mean <- function(x, na.rm = TRUE){ #na.rm modification is added to remove NAs if they are in the input. Can set the default value so do not have to specify each time we use it.
  if(na.rm == TRUE){
    x <- x[!is.na(x)]
  }
  result <- sum(x)/length(x)
  return(result)
  
}

mean(c(1,2, NA)) #If NAs are involved, the output will be an 'NA'




