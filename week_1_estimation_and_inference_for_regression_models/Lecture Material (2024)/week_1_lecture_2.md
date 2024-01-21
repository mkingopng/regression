# ZZSC5806 Regression Analysis for Data Scientists

## Lecture 2, Week 1 (Wednesday 17th January @ 6pm—8pm)

### Notes about quiz 1:
???
- see posts on the discussion board
- review all exercises
- binomial, poisson, normal in R
- watch L2 after 7pm to see discussion of R
- 

### 1.5 Exponential Family of Distributions
- **canonical**
- **the natural parameter**
- **nuisance parameters**
- includes: normal, binomial, poisson, gamma, inverse gaussian, bernoulli, exponential, geometric, negative binomial, beta, multinomial, multivariate normal, multivariate t, multivariate exponential, multivariate logistic, multivariate log-normal, multivariate gamma, multivariate inverse gaussian, multivariate beta, multivariate poisson, multivariate negative binomial, multivariate multinomial, multivariate hypergeometric, multivariate dirichlet, multivariate dirichlet-multinomial, multivariate von mises, multivariate weibull, multivariate pareto, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate log-beta, multivariate log-logistic, multivariate log-normal, multivariate log-uniform, multivariate log-logistic, multivariate log-gamma, multivariate
- we are going to use these distributions in subsequent chapters
- **binomial**: the number of successes in a sequence of n independent yes/no 
experiments, each of which yields success with probability p
- **normal**: 
- **poisson**: the probability of a given number of events occurring in a fixed 
interval of time and/or space if these events occur with a known constant rate 
and independently of the time since the last event
- properties of the exponential family of distributions
  - score statistic
  - information
  - log-likelihood function
  - variance of U or information
lots of notes! be sure the check them out!

### 1.6 Inference
the two main tools to make statistical conclusions are:
- confidence intervals
- hypothesis testing
- sampling distribution for score statistics
- normal approximation to binomial distribution
- taylor approximations
- sampling distribution of $\hat{\theta}$ the MLE of $\theta$
- wald statistics
- we can compare two models if they are related

### 1.7 Deviance
- a more general model with the maximum number of parameters
- saturated(maximal/full model) vs. unsaturated(reduced model)
- deviance is a measure of the lack of fit of a model
- non-centrality parameter
- nested model
- critical region
- degrees of freedom
- 