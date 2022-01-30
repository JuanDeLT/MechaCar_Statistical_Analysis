# MechaCar Statistical Analysis

## Results of Analysis

## Linear Regressiong to predict MPG
**Linear Regression**      |  **Linear Regression Summary**
:-------------------------:|:-------------------------:
![linreg](https://user-images.githubusercontent.com/89175578/151681821-e59a5a06-cece-4f48-ad35-a8043b12a3f4.png) |  ![sum_linreg](https://user-images.githubusercontent.com/89175578/151681826-2a4691b0-35e6-4361-a8e9-bfec596a875d.png)

- Length and ground clearance provided a non-random amount of variance to the mpg values.
- The sloped of the linear model is not considered to be 0. The p-value of our linear regression is 5.35e-11, which is smaller than the assumed significance level of 0.05%. There is enough evidence to reject the null hypothesis, which means that the slope of our linear model is not 0.
- Considering that the r-squared value is 0.7149, one can assume the model is good at predicitng the current data set, but it may not perform well predicting future data correctly due to overfitting.

## Summary Statistics on Suspension Coils
**Total Summary **|  **Lot Summary image** 
:-------------------------:|:-------------------------:
![total_sum](https://user-images.githubusercontent.com/89175578/151681878-5c0701e2-6e70-4450-99c0-64a54495aefd.png)| ![lot_sum](https://user-images.githubusercontent.com/89175578/151681887-6f6709c0-f88a-4182-ba1c-be3edb1d59e4.png)

The current manufacturing data does meet the design specification of sub 100 pounds per square inch for all manufacturing lots in total, but not for each lot individually. Lot 3 has a variance of 170.29 pounds per square inch, which exceeds the variance specifications of 100 pounds per square inch.

## T-Tests on Suspension Coils
**all t-test**|  **1 t-test**|**2 t-test**|**3 t-test**
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![all_ttest](https://user-images.githubusercontent.com/89175578/151681948-04d471a7-93c5-4dad-acaa-d11fbd673cf4.png)|![lot1_ttest](https://user-images.githubusercontent.com/89175578/151681957-66172af3-4c06-42ef-8a73-c9b50bf97df9.png)|![lot2_ttest](https://user-images.githubusercontent.com/89175578/151681959-589b1bbc-39cb-4a62-a94f-eec53c232914.png)|![lot3_ttest](https://user-images.githubusercontent.com/89175578/151681965-46c95945-7317-4a19-8ba8-f61b46dadcfb.png)

The one-sample t-test for the entire lot produced a p-value of 0.06, which is greater than the significance level of 0.05. This means that we do not have evdence to reject the null hypothesis, which in turn menas that the two means are statistically similar. Such was the case for all lots except lot 3, which had a p-value of 0.04, where we would be able to reject the null hypothesis.

## Study Design: MecharCar vs Competition
Fuel efficiency is an important metric for consumers to know, and is the metric being studied in this study design. The goal of this test is to test how the Mechacar fleet mpg stacks up against the competition. To do this we will compare the mean mpg of the Mechacar fleet and the mean mpg of a competitor. To test the means we would use a two-sample t-test. We would use this test because it tells you if the means of two groups are equal or not. The goal of this test is to check if the average mpg of Mechacars is higher than that of the competition. The null hypothesis would be that there is no statistical difference between the mpg means. The alternative hypothesis would be that there is a statistical difference between the means. The data that we would need is the mpg data for mechacars and their competitors.
