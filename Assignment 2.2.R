# Session 2 Assignment 2

# 1. Read multiple JSON files into a directory to convert into a dataset
# I have files text1, text2, text3 in the directory JSON.

library(jsonlite)
library(dplyr)

ls <- list("D:\\Data Analytics with RET\\Assignment\\JSON\\text1.json",
           "D:\\Data Analytics with RET\\Assignment\\JSON\\text2.json",
           "D:\\Data Analytics with RET\\Assignment\\JSON\\text3.json")

for (i in ls){
  z <- data.frame()
  a <- read_json(i, simplifyVector = TRUE)
  z <- cbind(z,a)
}
View(a)

# ---------------------------------------------------------------

#2. Parse the following JSON into a data frame.

json <- '[
{"name" : NULL,
"release_date_local" : NULL,
"title" : 3(2011),
"opening_weekend_take" : 1234,
"year" : 2011,
"release_date_wide" : [2011-09-16],
"gross" : 59954
}
]'

mydf <- fromJSON(json, simplifyVector = TRUE, simplifyDataFrame = simplifyVector)
mydf

# 3. Write a script for Variable Binning using R.

bin <- c(1:100)
bin


binning <- function(x)
{
  for(i in c(1:100))
  {
    ifelse(i <= 25, paste(i,"group1"),
           ifelse(i <= 50, paste(i,"group2"), 
                  ifelse(i <= 75, paste(i,"group3"),
                         paste(i,"group4"))))
    break
  }
}

binning(bin)