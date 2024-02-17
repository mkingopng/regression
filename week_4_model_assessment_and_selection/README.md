
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
- the training set is used to fit the model is drawb from the joint distribution of x and y
- using this data or set, we're going to predict the function y = f(x) to predict yhat
- the training error quantifies the discrepancy or loss between the fitted value and the response value
- the test is the expected value of the loss given the training data set. 
- obtained by averaging the loss over all new data pairs drawn from p(x, y)
- small error is desirable since yhat generalises well and yields small loss for new data
- the expected error is the average of the generalisation error over all possible training sets
- 

# Questions:
- why the emphasis on this metric in this course? I had the impression that RMSE was more popular?


# text book

# translate all exercises into python

# ed notes into latex

# record videos

# Medium article(s)
