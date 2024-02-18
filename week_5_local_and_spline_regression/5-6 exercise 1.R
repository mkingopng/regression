library(ISLR)
data("Wage")
attach(Wage)

# q1
fit <- lm(wage~bs(age, knots=c(25,40,60)), data=Wage)

age.grid <- seq(from=min(age), to=max(age), length=100)
pred <- predict(fit, newdata=list(age=age.grid), se=TRUE)

plot(age, wage, col="gray")
lines(age.grid, pred$fit, lwd=2)
lines(age.grid, pred$fit + 2*pred$se, lty=2)
lines(age.grid, pred$fit - 2*pred$se, lty=2)

# q2
fit2 <- lm(wage~bs(age, df=6, degree=2), data=Wage)
attr(bs(age, df=6), "knots", degree=2)
# 20% 40% 60% 80%
#  32  39  46  53
pred2 <- predict(fit2, newdata=list(age=age.grid), se=TRUE)

plot(age, wage, col="gray")
lines(age.grid, pred2$fit, lwd=2)
lines(age.grid, pred2$fit + 2*pred2$se, lty=2)
lines(age.grid, pred2$fit - 2*pred2$se, lty=2)

# q3
fit3 <- lm(wage~ns(age, df=6), data=Wage)
pred3 <- predict(fit3, newdata=list(age=age.grid), se=TRUE)

plot(age, wage, col="gray")
lines(age.grid, pred$fit, lwd=2)
lines(age.grid, pred$fit + 2*pred$se, lty=2)
lines(age.grid, pred$fit - 2*pred$se, lty=2)
lines(age.grid, pred3$fit, lwd=2, col="red")
lines(age.grid, pred3$fit + 2*pred3$se, lty=2, col="red")
lines(age.grid, pred3$fit - 2*pred3$se, lty=2, col="red")

# q4
plot(age, wage, xlim=range(age), cex=0.5, col="darkgrey")
title("Smoothing Spline")
fit4 <- smooth.spline(age, wage, df=16)
fit5 <- smooth.spline(age, wage, cv=TRUE)
fit5$df
lines(fit4, col="red", lwd=2)
lines(fit5, col="blue", lwd=2)