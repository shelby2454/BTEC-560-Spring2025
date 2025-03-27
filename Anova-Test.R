#Author: Shelby Thomas; Date: 03/27/2025; Purpose: Perform ANOVA test

#Load a library dplyr
library(dplyr)

#Store the http link in a variable called PATH
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

#It is a string, must be in quotes, single or double. would give error in other programs if not double quote

#Read the CSV file from above link
df <- read.csv(PATH)

head(df)

#CSV function realize row names as first column, but we can get rid of it by adding argument

df1<- read.table(PATH, row.names= FALSE)

#A simplier way
df[,c(2:4)]