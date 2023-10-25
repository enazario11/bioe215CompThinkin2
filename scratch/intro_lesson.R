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

#create new repo for this project 
library(usethis)

use_git()
git_default_branch_rename()
use_github() #will open browser to new repo

#setup function
project_setup <- function(){
  dir.create("data")
  dir.create("scratch")
  dir.create("reports")
  dir.create("docs")
  
  file.create("data/README_data.md")
  file.create("scratch/README_scratch.md")
  file.create("reports/README_reports.md")
  file.create("docs/README_docs.md")
  
  writeLines("creates a folder for data files", 
             "data/README_data.md")
  writeLines("creates a folder for scratch work script files", 
             "scratch/README_scratch.md")
  writeLines("creates a folder for finalized quarto HTML files", 
             "reports/README_reports.md")
  writeLines("creates a folder for .Qmd files", 
             "docs/README_docs.md")
  
  return("SUCCESS!")
}

#run function
project_setup()

file.create("scratch/assessment.R")
