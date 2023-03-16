# Generate the data
set.seed(202105)
x <- runif(20) # covariates
err <- rnorm(20, sd=0.25)
y <- x + err

# Fit polynomial of order k=5,10 and 15
poly5 <- lm(y~poly(x,5))
poly10 <- lm(y~poly(x,10))
poly15 <- lm(y~poly(x,15))

newx <- seq(min(x),max(x),length=50)

predict.poly5 <- predict(poly5, newdata=list(x=newx))
predict.poly10 <- predict(poly10, newdata=list(x=newx))
predict.poly15 <- predict(poly15, newdata=list(x=newx))

plot(x,y, pch=16, ylim=range(predict.poly10), xlab="X", ylab="Y")
points(newx,predict.poly5, type="l", col="blue", lwd=2)
points(newx,predict.poly10, type="l", col="green", lwd=2)
points(newx,predict.poly15, type="l", col="red", lwd=2)
dev.copy2pdf(file="Lect7_PolyFits.pdf", height=5, width=7)