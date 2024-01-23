Quiz 1: 
Open from today until 5pm Monday next week. Be ready to do some R coding (nothing difficult).

- This quiz is based on Auto data set from  the ISLR library in R.
- This quiz is divided into four parts. 
- Each part has a number of questions you must answer correctly to achieve a mark.
- To begin load the *Auto* dataset
```R
library(ISLR)
Auto=Auto
help(Auto)
```

# dataset information
- Description: Gas mileage, horsepower, and other information for 392 vehicles.
- Format: A data frame with 392 observations on the following 9 variables.
  - mpg: miles per gallon
  - cylinders: Number of cylinders between 4 and 8
  - displacement: Engine displacement (cu. inches)
  - horsepower: Engine horsepower
  - weight: Vehicle weight (lbs.)
  - acceleration: Time to accelerate from 0 to 60 mph (sec.)
  - year: Model year (modulo 100)
  - origin: Origin of car (1. American, 2. European, 3. Japanese)
  - name: Vehicle name
- Note that the original data set contained 408 observations but 16 observations with missing values were removed.
- Source: This dataset was taken from the StatLib library which is maintained at Carnegie Mellon University. The dataset was used in the 1983 American Statistical Association Exposition.

* **Question**: when referring to acceleration increasing, does this mean the value of the variable accerleration increases OR the variable accerleration decreases as the vehicle has a faster acceleration?
* **Answer**: Just consider the value of acceleration as it is reported, i.e., if the values in column acceleration increase

------
Quiz questions

# Part 1
- q1: How many rows are there in this data set?
- a1: 
- q2: How many columns?
- a2: 
- q3: Which of the columns contains the time to accelerate for each car? Provide the column name (Case sensitive).
- a3: 
- q4: If any, select which of the following variables in the data set are qualitative? (year, origin, name, cylinders)
- a4: 

# Part 2: 
- q1: What is the mean of the variable displacement? Quote numbers rounded to one decimal places.
- a1:
- q2: What is the standard deviation of the variable horsepower? Quote numbers rounded to one decimal places.
- a2: 
- q3: What is the median of the variable mpg? Quote numbers rounded to one decimal places.
- a3:

# Part 3
- q1: Create a scatterplot of horsepower and acceleration in this data set.  Is the following statement correct: When horsepower increases acceleration also increase. (True, False)
- a1:

# Part 4:
We are going to model the acceleration variable using the normal distribution. Estimates of the mean μ and variance σ2 are obtained via maximum likelihood estimation.
- q1: What is the value of the maximum likelihood estimate of the mean? Quote the value rounded to three decimal places.
- a1:
- q2: What is the value of the maximum likelihood estimate of the variance? Quote the value rounded to three decimal places.
- a2: 
- q3: Assume that acceleration is modelled using the normal distribution with unknown mean μ and known variance σ2=8. What is the difference in deviance (ΔD) between this model and the one considered in question 1-2 (unknown variance)? Quote the value rounded to three decimal places.
- a3: 
- q4: Is the following statement true or false? At a level of significance α=0.05, we can conclude that there is no difference between the two models.
- a4: 