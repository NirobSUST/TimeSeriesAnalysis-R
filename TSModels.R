set.seed(50)

testts <- ts(rnorm(300), start = c(1919,1), frequency = 4)

plot(testts)

library(forecast)

meanmodel <- meanf(testts, h = 20)
naivemodel <- naive(testts, h = 20)
driftmodel <- rwf(testts, h = 20, drift = T)

plot(meanmodel, main = "")
lines(naivemodel$mean, col = 123, lwd = 2)
lines(driftmodel$mean, col = 22, lwd = 2)
legend("topleft", lty = 1, cex = 0.5, col = c(4, 123, 22), legend = c("Mean method","Naive method","Drift method"))
