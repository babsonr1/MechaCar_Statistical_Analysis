# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
The vehicle length and ground clearance showed non-random correlation to the mpg values. The slope is not zero for most of the variables, with an exception of vehicle weight. This most likely means that vehicle weight has almost nothing to do with mpg. This does predict the mpg of MechaCar prototypes effectively, as it can decipher between two of the variables: vehicle length and ground clearance. Otherwise, it is able to note that vehicle weight and AWD has little impact on the mpg.

## Summary Statistics on Suspension Coils
![image](https://user-images.githubusercontent.com/85752084/145465136-2f96a854-2b11-41b0-9fd9-938d8238e4c7.png)
![image](https://user-images.githubusercontent.com/85752084/145465238-6043f475-3cf4-4870-ba5f-71fada5f992d.png)
These two summary dataframes show the mean, median, variance, and standard deviation for the PSI for the car's manufacturing. The variance is in compliance overall, but as the data is separated, it is clear that Lot 3 is 70 points over the allowed variance in PSI. Lot 3 would need to change this to be in compliance. Overall, however, the manufacturing is not passed its limit.

## T-Tests on the Suspension Coils
```
One Sample t-test

data:  subset(suspensionCoil, Manufacturing_Lot == "Lot1", select = PSI)
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
```
For Lot 1, the data is almost entirely centered at 1500, as the t-value is 0 and the p-value is 1, which means it is entirely correct.
```
One Sample t-test

data:  subset(suspensionCoil, Manufacturing_Lot == "Lot2", select = PSI)
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 
```
For Lot 2, the P-value is at roughly 0.60, which means that the data most likely has a mean of 1500. At least, it is close enough to 1500 that this test cannot conclude that it is not.
```
One Sample t-test

data:  subset(suspensionCoil, Manufacturing_Lot == "Lot3", select = PSI)
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
```
For Lot 3, the P-value is 0.04, which means that the mean PSI is definitely not 1500. T-tests do not say if it is less than or more than 1500, but looking at the data it is clear that the mean is lower than 1500, 1496.14 to be exact.

## Study Design: MechaCar Competition
Data could be collected from MechaCar and its competitors about price per mile, highway fuel efficiency, and safety rating. Then, a linear regression model could be run with all of the variables, while still staying within the companies in an effort to determine what metric correlates to each other the most. Then, the top metrics could be used in a t-test against the competition to see how much better they are against each other. The null hypothesis would be that means are equal, while the alternative hypothesis would be that the means are not equal (for a two-way test).
