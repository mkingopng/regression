## MLE
theta.hat <- function(y, lambda){
  ( sum(y^lambda) / length(y) )^(1/lambda)
}
## Log-likelohood plot
loglik <- function(y, theta, lambda){
  sum((lambda-1)*log(y) + log(lambda) - lambda * log(theta) - (y/theta)^lambda  )
}

y <- failure$lifetimes
theta.values <- seq(from=7000, to=13000, length=1000)
loglik.values <- sapply(theta.values, function(x) loglik(y=y, theta=x,
                        lambda=2) )
plot(theta.values, loglik.values, type="l", ylab="log-likelihood",
     xlab=expression(theta))
abline(v=theta.hat(y=y, lambda=2), lty=2, col=2)
abline(h=loglik( pressure, theta.hat(y=y, lambda=2), lambda=2), lty=2,
       col=2)