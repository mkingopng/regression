
# lecture 1 notes
- measuring the quality of a model's fit using MSE
- then we test on the test set, data previously not used to train/fit the model
- the concept of overfitting: divergence of train MSE and test MSE
- the bias - variance trade off, the optimal balance of which coincides with the minimal test MSE
- we require a **loss function** for penalizing errors in prediction
- the concept of cross validation

# lecture 2 notes

# Bruce Beranger Lecture Notes (2:55:55)

## Main topics
1. Model selection
2. Model assessment using test error and cross-validation

### resampling methods: 
- an indispensable tool in modern statistics
- cross validation: used to estimate the test error
- boot strap: resampling method used to assess the variability of a model

### Mean squared error (MSE)
- the average of the squared differences between the predicted and actual values
- MSE = 1/n * sum(yi - yhat)^2
- computed using the training set
- this is not a good way to assess the model so we're more interested in the accuracy of predictions made using the model on previously unseen data (the test set)

### example polynomial fitting: 
- we can see that the higher order polynomial has the smallest MSE 
- but visually, we can see that it is not the best because it doesn't generalise well. it over fits the data
- However, if i test on unseen data, this over-fitting will be apparent
- when a model yields a good train MSE but a poor test MSE, it is said to over-fit the data
- the model is optimal when the gap between train and test is lowest. The curves will converge and then diverge.
- cool code and plots for this example

### Bias - Variance trade off
- **bias-variance trade off**: in order ot minimise the expected test error we need to select a model that simultaneously achieves low variance and low bias
- **irreducible error**: the error that cannot be reduced by any model
- we need to simultaneously minimise the bias and variance of the model
- This theory requires a loss function for penalising errors in prediction
- **examples of loss functions**: 
  - squared error loss: one of the most commonly used loss functions 
  - deviance loss: where it is implicit that the parameter beta determines the regression function f. By definition of the deviance, this is only correct up to a constant. But constants are irrelevant when minimising the loss
  - 0-1 loss: in a classification problem such as logistic regression, the response Y is categorical, then the misclassification error is often used as a loss function
  - exponential loss

### Statistical Decision Theory


### Definition of Errors
- the training set is used to fit the model is drawb from the joint 
  distribution of x and y
- using this data or set, we're going to predict the function y = f(x) to 
  predict yhat
- the training error quantifies the discrepancy or loss between the fitted 
  value and the response value
- the test is the expected value of the loss given the training data set. 
- obtained by averaging the loss over all new data pairs drawn from p(x, y)
- small error is desirable since yhat generalises well and yields small 
  loss for new data
- **expected error**: the average of the generalisation error over all 
  possible training sets
- **in sample error**: 
- **optimism**: the difference between the in-sample error and the training error
- average optimism: the expected value of the optimism

### Cross Validation
- the **test error** can be easily calculated if a designated test set is 
  available. Unfortunately this is not usually the case
- however, the **training error** can be easily calculated on the training dataset
- cross-validation is a method for estimating the average test error using 
  the training data
- cross-validation is a popular method for estimating the average test error
- we take the dataset and split it into k parts randomly, into the training 
  and test set
- the model is fit on the training set and tested on the test set
- the resulting validation error is then averaged over the k test sets

cross validation has two main drawbacks
- the validation estimate of the test error rate can be very variable
- only a part of the observations is used to fit the model, ie the sample 
  size is reduced as a result of the split

There are different types of cross-validation:
- leave one out cross validation (LOO-CV): deals with the issue of the 
  sample size being reduced, but it is computationally expensive. Exception 
  is Least Squares Regression
- k-fold (or m-fold) cross-validation (k-CV): the data is split into k 
  roughly equal parts. The model is fit on k-1 parts and tested on the 
  remaining part. This is repeated k times, each time a different part is 
  used as the test set

# Bootstrap
The bootstrap is a widely applicable and powerful statistical tool that 
can be used to quantify uncertainty associated with a statistical method. 
As a cross-validation method, the bootstrap seeks to estimate the conditional 
test error.
The basic idea is to randomly draw n observations with replacement from the 
training data, each sample is of the same size as the original data set.
This is done B times, producing B bootstrap datasets. 
We refit the model to each of the B datasets and examine the behaviour of 
the fits.
Leave one out bootstrap, works the same as LOO-CV.

# information criteria
When we compare different models, we would like to select the best, ie the 
one leading to the lowest test error. 
RSS and R2 are not suitable for this task because they are based on the 
training sample and the training error can be a poor estimate of the test 
error.

To select the best model, we can:
- estimate the test error directly through cross-validation
- estimate the test error by adjustment of the training error

Mallows Cp, AIC, BIC are examples of information criteria. We can use these 
to adjust the training error for the model size.
- **Cp** gives an estimate of error (in-sample prediction error) and is 
  hence a criterion for model selection: choose model complexity with 
  minimal Cp.
- using **AIC**, which aims to minimise the generalisation error 
  asymptotically for large N.
- **AICc** is a corrected version of AIC for small sample sizes
- **BIC** penalises complexity more strongly than AIC. The model with lowest 
  BIC corresponds to the model with highest log-posterior probability 
  assuming an indifferent prior

# Variable selection



# Questions:
- why the emphasis on this metric in this course? I had the impression that 
  RMSE was more popular?


# text book

# translate all exercises into python

# ed notes into latex

# record videos

# Medium article(s)
