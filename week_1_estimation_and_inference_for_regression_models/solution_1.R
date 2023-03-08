library(dobson)
data("failure")
attach(failure)

NR.theta <- function(y, iter, theta0, lambda){

  sum.ylambda <- sum(y^lambda)
  N <- length(y)

  theta.hat <- U <- UPrime <- EUPrime <- vector(length=iter+1)
  theta.hat[1] <- theta0
  U[1] <- -lambda*N/theta0 + lambda * sum.ylambda / theta0^(lambda+1)
  UPrime[1] <- lambda*N/theta0^2 - lambda * (lambda+1) * sum.ylambda / theta0^(lambda+2)
  EUPrime[1] <- - lambda^2 * N / theta0^2

for(i in 2:(iter+1)){

  theta.hat[i] <- theta.hat[i-1] - U[i-1]/UPrime[i-1]
  U[i] <- -lambda*N/theta.hat[i] + lambda * sum.ylambda / theta.hat[i]^(lambda+1)
  UPrime[i] <- lambda*N/theta.hat[i]^2 - lambda * (lambda+1) * sum.ylambda / theta.hat[i]^(lambda+2)
  EUPrime[i] <- - lambda^2 * N / theta.hat[i]^2
}
return(list(theta=round(theta.hat,1), U=round(U*1e6,2), UPrime=round(UPrime*1e6,2), EUPrime=round(EUPrime*1e6,2) ))
}
est <- NR.theta(failure$lifetimes, iter=3, theta0=round(mean(failure$lifetimes),1),
                lambda=2)
est
est$U / est$UPrime
est$U / est$EUPrime
