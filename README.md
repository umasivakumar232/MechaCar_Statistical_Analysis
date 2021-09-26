# MechaCar_Statistical_Analysis

## Overview

In this challenge, we help Jeremy and the data analytics team do the following:

	* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
	
	* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
	
	* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
	
	* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

## Resources

We will use the 

	* Programming language R 

	* RStudio the Integrated Development Environment for R

	* And the associated R packages of tidyverse, JSONlite , dplyr & ggplot2 to help us with our analysis


## Deliverable 1: Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as 
	
	* vehicle length
	* vehicle weight 
	* spoiler angle
	* drivetrain and 
	* ground clearance

were collected for each vehicle. 

The purpose of this analysis is to design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. Here we want to check which of above metrics affects mpg. Our multiple linear regression looks as below

 
We can conclude the following 

The p-value of this linear model is 5.35e-11, this is much smaller than the assumed significance level of 0.05%. Therefore,it can be stated that there is sufficient evidence to reject our null hypothesis
 
The predictors **vehicle length & ground clearance** have p-values that are less than the significance level of 0.05. These results indicate that           these predictors have a statistically significant effect on mpg

The predictors **vehicle weight, spoiler angle and drivetrain** have p-values that are greater than the significance level of 0.05. Which indicates that there is not enough evidence to conclude that these have a significant effect on mpg
	
Next let us look at the Rsquare to see how well our model fits our data. Rsquare is the percentage of variation in the response that is  	     explained by the model. The higher the Rsquare value, the better the model fits our data. Our Rsquare is 0.7149 and adjusted Rsquare is 0.6825. 	  	This means that 68% of the time our model will predict the results correctly.

## Deliverable 2: Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots

In this analysis we have two summaries 
Total Summary
Lot Summary
.
The mean and median are nearly same this means that the values are evenly distributed.
The standard deviation of (7.89) is on the higher side, this means that the indicates data is more spread out.
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. * As per the above statistics, the variance is 62.2 pounds per square inch which is below the specified value. Hence the current manufacturing data meets  this design specification in total.
When we look at the lot_summary we find that variance for Lot 1 (0.98) and Lot 2(7.47) are well within the 100 PSI variance requirement level. But for Lot 3 (170) the variance is much higher than the recommended. It is Lot 3 that is disproportionately causing the variance to increase at the total level


## Deliverable 3: T-Test on Suspension Coils

T-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. T-tests are handy hypothesis tests in statistics when we want to compare means. Compare a sample mean to a hypothesized or target value using a one-sample t-test

* True mean of  the sample of all the lots combined is 1498.78. The p-Value of 0.06 is higher than the standard of of 0.05. Hence our null hypothesis is true. We can say that the means of all three of these manufacturing lots is statistically similar to the presumed population mean of 1500.

Let us look at the T-test results for each individual lot:
* Lot 1 sample mean is 1500 and the p-Value of 1 is higher than the standard of of 0.05. Hence our null hypothesis is true. We can say that the mean of Lot1  is statistically similar to the presumed population mean of 1500.
* Lot 2 sample mean is 1500.02 and the p-Value of 0.61  is higher than the standard of of 0.05. Hence our null hypothesis is true. We can say that the mean of Lot2  is statistically similar to the presumed population mean of 1500
*Lot3 sample mean is 1496.14 and the p-Value of 0.04 is lower than the standard of of 0.05. Hence we can reject the null hypothesis. We can say that the mean of Lot3  is statistically dissimilar to the presumed population mean of 1500

## Deliverable 4 : Study Design: MechaCar vs Competition 

In this analysis we design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers

### What metric or metrics are you going to test?

Air pollutants generated through the combustion of fossil fuels present a difficult environmental challenge to society. Transportation, which depends heavily on fossil fuels as an energy source, is a prominent contributor to the problem. Emissions of carbon monoxide, volatile organic compounds, and nitrogen oxides, all of which affect local air quality and may cause publichealth problems. In our proposed study we would like to compare automotive emissions from MechaCar with its competition. The statistical analysis of automotive emissions is clearly a topic of current interest and being able to prove that MechaCar is more environmentally friendly than its competition may give them brownie points with the government in terms of grants and also bragging rights in media to help build a positive image for MechaCar 


### Challenges 

Challenges in this study will be regarding sampling of vehicle populations. For example, determining the number and characteristics of all the vehicles in a large city so that a truly representative subset of those vehicles can be emissions tested. Other equally challenging problems include determining the
correct sample size (the right number of vehicles) and knowing how to appropriately weight vehicle characteristics on the basis of actual usage or vehicle-miles traveled

### Measurement Techniques

While there are many techniques that are used to measure emissions, we will use the on-board diagnostic (OBD) computer system required on all new cars sold after 1995 to measure vehicle emissions in our study.The OBD system is designed to monitor over 50 parameters of vehicle and engine operation.If the on-board computer detects malfunctions or operations that would lead to tailpipe emissions greater than 1.5 times the certification standard, the system stores a “fault” code in the computer and turns on a “malfunction indicator light” (MIL) on the dashboard to alert the driver


### The null hypothesis or alternative hypothesis?

MechCar vehicles have atleast a 25% lower chance of getting a MIL alert as compared to the 6 other competitive cars in the study 

What statistical test would you use to test the hypothesis? And why?

The statistical analysis we will run to help test our hypothesis are - Multiple regression model to check the factors that contribute most to increasing   emissions to the point where we get a MIL alert

A two-way ANOVA for two different independent variables (e.g., MIL alerts based on vehicle age and vehicle technology)

What data is needed to run the statistical test?

We will need the following data to help us in our study
 
 - Number of MIL system alerts 
 - Vehicle age
 - Vehicle technology
 - vehicle mileage
 - Fuel quality
 - Driving terrain
 