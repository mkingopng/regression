# ZZSC 5806 Regression analysis for data scientists
## Lecture 1, Week 1 (Tuesday 16th January @ 6pm—8pm)

refers throughout to lecture notes throughout

- notations: random variables, realisations, parameters, estimators, vectors, matrices, transpose
- what is regression analysis?
- fundamental definitions: prediction, reducible error and irreducible error.
- purpose of regression: inference, prediction
- methods of estimation: parametric or non-parametric
- parametric: linear regression, logistic regression, poisson regression
- non-parametric: k-nearest neighbours, kernel regression, splines
- Maximum Likelihood Estimation (MLE), often we work with log-likelihood
- beware the difference between biased and unbiased variance
- Properties of MLE: 
  - invariance, 
  - consistency, 
  - asymptotic normality, 
  - asymptotic efficiency, 
  - sufficiency
  - CAN estimator: consistency, asymptotic normality
- Least squares estimation
- Weighted Least squares estimation
- model fitting
- Examples: australian longitudinal study on women's health (Lee et al 2005)
- Examples: the Framingham Heart Study (D'Agostino et al 2008)
- Examples: the National Health and Nutrition Examination Survey (NHANES) (Johnson et al 2007)
- relating income to years of education
- what are the questions to be answered when analysing a set of data?
- dont under-value exploratory statistics!
- measuring the quality/adequacy of the fit
- goodness of fit: 
  - in regression usually MSE or RMSE
  - cross validation on train/test to check overfitting
- the bias variance trade-off
  - bias: the difference between the expected value of the estimator and the true value of the parameter being estimated
  - variance: the variability of the estimator
  - flexible methods have a larger variance
  - restrictive methods have a larger bias
- in a classification context we measure model accuracy using the error rate
- Bayes classifier: is an unattainable gold standard
- K-nearest neighbours

## 1.4 Estimation procedure
- point estimation
- weibull: commonly used to estimate time to failure, PDF, Likelihood function
- example: pressure vessels
- score function: the first derivative of the log-likelihood function
- if there is no analytical solution, we use the Newton-Raphson method
- review shared R code
- method of scoring
- likelihood maximisation

## 