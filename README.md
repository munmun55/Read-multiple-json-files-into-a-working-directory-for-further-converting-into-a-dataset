# Read-multiple-json-files-into-a-working-directory-for-further-converting-into-a-dataset
Read multiple json files into a working directory for further converting into a dataset.  I have files text1, text2, text3 in the directory json.


The sample json files text1.json, text2.json and text3.json are present in the folder “json” in E:\\munmun\\json

Jsonlite  and dplyr packages are installed and then following commands are executed using R-studio:

# Reading multiple files using for loop and convert into a dataset

library(jsonlite)
library(dplyr)

ls <- list("E:\\munmun\\json\\text1.json",
           "E:\\munmun\\json\\text2.json",
           "E:\\munmun\\json\\text3.json")
           
for (i in ls){
  a[i] <- read_json(i, simplifyVector = TRUE)
  z[i] <- data.frame( i,row.names = NULL, check.rows = FALSE,
                      check.names = TRUE, fix.empty.names = TRUE,
                      stringsAsFactors = default.stringsAsFactors())
  
  z[i] <- cbind(z[i],a[i])
}

View(a)
View(z)

Hence multiple json files are read into the working directory and are then converted into datasets.

The current working directory may be obtained by using getwd()

