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

#Load library ggplot
library(ggplot2)

#Plot your data using ggplot2
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

#Apply the ANOVA function
anova_one_way <- aov(time~poison, data = df)
 
summary(anova_one_way)

            Df Sum Sq Mean Sq F value   Pr(>F)    
poison       1 0.9316  0.9316   20.67 3.96e-05 ***
Residuals   46 2.0735  0.0451                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

