#Author: Shelby Thomas, Date: 4/8/2025, Purpose: Calculate T-Test

#Generate Dummy datasets for comparisons
x=rnorm(10)
y=rnorm(10)

x
[1]  0.006309316  0.077727080 -0.336025697  0.519232226 -0.085998709
 [6]  2.009485623  1.460886838 -0.323948337  0.636338408  0.771689592

y
 [1]  1.94863643 -0.32351991 -2.42743094 -2.47665814 -0.09521476 -0.54986624
 [7]  1.43127366 -0.46961057  0.03250534 -1.24678329

#Plotting x and y to check for normal distribution
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

#Apply T-Test Function
ttest= t.test(x,y)
ttest

 Welch Two Sample t-test

data:  x and y
t = 1.7349, df = 13.905, p-value = 0.1049
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.2112625  1.9937355
sample estimates:
 mean of x  mean of y 
 0.4735696 -0.4176668 

#If p=value = > 0.05 then the groups are similar if <0.05 the groups are not similar and are significantly different.
Due to the P-value being more than 0.05 the groups are not significantly different.