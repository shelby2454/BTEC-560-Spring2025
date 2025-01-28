#Author:Shelby,Date:1/28/2025,Purpose:Descriptive measures functions

#Calculate standard deviation
#Create dummy dataset
data <- c(1,2,3,4,5,6,7,8)
data1 <- c("A","B","C")
data2 <- c(1:1000)

sd(data)
#[1] 2.44949
sd(data2)
#[1] 288.8194

#Calculate mean
mean(data)
#[1] 4.5

#Calculate median
median(data)
[1] 4.5

#Calculate mode in R
getmode <- function(v){
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v,uniqv)))]}

data4 <- c(1,2,1,3,4,5)
getmode(data4)
[1] 1



