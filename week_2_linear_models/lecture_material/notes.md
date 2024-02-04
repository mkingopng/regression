# week 2 Lecture 1

1) 1 predictor (Simple)
2) more than 1 predictor (multiple)
3) multiple predictors and multiple responses (multivariate)
4) hypothesis testing, confidence testing and predictors
5) ANOVA
6) ANCOVA
7) GLMs & Extensions


- `vcov()` returns the variance-covariance matrix of the estimated parameters
- `confint()` returns the confidence intervals of the estimated parameters
- `predict()` returns the predicted values of the response variable

- GitHub.io [The Book of Statistical Proofs](https://statproofbook.github.io/P/slr-olsvar.html)
- I need to watch this lecture again
- what does it mean to have some points that are 'high leverage'?

# Youtube Videos
- [StatQuest](https://www.youtube.com/watch?v=nk2CQITm_eo)
- [Khan Academy](https://www.youtube.com/watch?v=0vqOZgMOUR4)

## Confidence intervals vs Prediction intervals

## how to calculate confidence and prediction intervals for regression in R

## leverage and influential points in simple linear regression


--------------------------
# Lecture 2
- notes about studentised residuals vs standardised residuals in linear models
- [stack exchange](https://stats.stackexchange.com/questions/204708/is-studentized-residuals-v-s-standardized-residuals-in-lm-model)
- [Penn State](https://online.stat.psu.edu/stat462/node/247/)
- find MLE
- score function
- use the chain rule to find the score function
- gauss - markov theorem
- hat matrix
- do we need to do these proofs in the assessments?
- Cooks distance
- 
--------------------------

## recording 1
### 2:49:28

This lecture is about obtaining estimates for 
- Multivariate Linear regression
- ANOVA
This is a case where analytical solutions exist, which is not always true

Numerical solution: Newton-Raphson

explanation of multiple regression vs SLR

linear models of the simple form y = mx + b

### Types of linear regression
- SLR: one i ndependent variable one dependent variable
- multiple regression: multiple indpendent variables, one dependent variable
- multivariate: multiple independent variables, multiple dependent variables

### ANOVA (Analysis of Variance)
- **Purpose**: ANOVA is used to determine if there are any statistically 
significant differences between the means of three or more independent  
  (unrelated) groups. It assesses the impact of one or more categorical  
  independent variables on a single continuous dependent variable. 
- **Key Component**: The key component in ANOVA is the independent variables, 
  which are categorical (also known as factor variables), and the dependent 
  variable, which is continuous.
- **Mechanism**: ANOVA works by comparing the variance (spread of data) 
  between 
  the groups to the variance within the groups. The F-statistic is 
  calculated  to determine whether the group means are significantly 
  different  from each other.
- **Types**: There are several types of ANOVA, including one-way ANOVA (for 
  one categorical independent variable), two-way ANOVA (for two categorical 
  independent variables), and so on, depending on the number of factors and 
  the structure of the design (e.g., repeated measures, factorial design).:

### ANCOVA (Analysis of Covariance)
- **Purpose**: ANCOVA is used to compare the means of three or more groups while 
  controlling for the effects of one or more covariates that may affect the 
  dependent variable. A covariate is a continuous variable that is not the  
  main focus of the study but could influence the outcome.
- **Key Components**: In addition to the categorical independent variables (as 
  in ANOVA), ANCOVA also incorporates one or more continuous covariates 
  that are thought to have an impact on the dependent variable.
- **Mechanism**: ANCOVA adjusts the dependent variable for differences in the 
  covariate(s), allowing for a more accurate comparison of the means across 
  the groups. It essentially removes the variability associated with the  
  covariates before testing for differences in group means.
- **Benefit**: By controlling for covariates, ANCOVA can increase the 
  statistical power of the analysis, as it reduces the error variance. It  
  helps in understanding the effect of independent variables on the 
  dependent variable while accounting for the influence of other continuous 
  variables.

### Canonical MLE
- link function
- log-likelihood
- expected value of y_i
- score function
- fisher information matrix

### MLE properties
- unbiasedness
- normality
- variance covariance

### Gauss-Markov Assumptions
The Gauss-Markov assumptions are a set of conditions under which the 
Ordinary Least Squares (OLS) estimator is the Best Linear Unbiased 
Estimator (BLUE) of the coefficients in a linear regression model. These 
conditions apply to the error terms of the regression model, ensuring that 
OLS estimates are efficient and unbiased.

- the expected value of errors is 0
- Linearity in Parameters
- the function is convex so we can minimise it
- Random Sampling
- No Perfect Multicollinearity
- Zero Conditional Mean
- Homoscedasticity
- No Autocorrelation

When these assumptions are met, the OLS estimator provides the most 
efficient (in the sense of having the smallest variance) and unbiased 
estimates of the regression coefficients among all linear unbiased estimators

### Least Squares Estimation
The objective of Least Squares Estimation is to find the line (or curve, in 
non-linear regression) that best fits the data, according to the criterion 
of minimizing the sum of the squared residuals. A residual is the 
difference between an observed value and the value predicted by the model.

### Diagnostics
- **standard errors**: a measure that quantifies the amount of variability or dispersion of the sampling distribution of that statistic. In simpler terms, it estimates how much the computed value of a statistic (such as the mean, proportion, or regression coefficient) would vary if you were to repeat the study many times and calculate the statistic for each replicate study.
- **confidence intervals**: a type of interval estimate, computed from the statistics of the observed data, that might contain the true value of an unknown population parameter. The interval has an associated confidence level that quantifies the level of confidence that the parameter lies within the interval.
- **deviance**: In the context of statistical modeling, particularly in generalized linear models (GLMs) and other complex regression models, deviance is a measure used to assess the goodness of fit of a model.
- scaled deviance:
- **hat matrix**: The hat matrix is a matrix that maps the observed values of the dependent variable to the predicted values from a linear regression model.

### Models
- minimal model: 
- saturated model: 
- hypothesis testing: 
- F-statistic: 
- distribution of residuals (normality): 
- variance-covariance matrix: 

### Residuals
- **RSS**: residual sum of squares
- **TSS**: total sum of squares
- standardised residuals
- studentised residuals
- leverage
- cooks distance
- the residual sum of squares is minimised by the least squares estimate
- R^2: coefficient of determination. The proportion of the variance in the 
- dependent variable that is predictable from the independent variable(s)
- there is a relationship betwee the F-statistic and the R^2
-------------------------

## recording 2
### 1:05:14

-------------------------

## Todo:
- do readings and exercises from course content
- make flash cards
- memorise definitions
- do textbook readings & exercises
- do similar R exercises using different data sets
- youtube
- record lectures
