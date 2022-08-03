#Residual

#Data set
set.seed(95)
myts <- ts(rnorm(200), start = (1919))

#Setting up simple models
library(forecast)
meanm <- meanf(myts, h = 20)
naivem <- naive(myts, h = 20)
driftm <- rwf(myts, h = 20, drift = T)

#Variance and mean of the mean model
var(meanm$residuals)
plot(meanm$residuals)
mean(meanm$residuals)

#Deleting the NA at the front of the vector
naivwithoutNA <- naivem$residuals
naivwithoutNA <- naivwithoutNA[2:200]
var(naivwithoutNA)
mean(naivwithoutNA)

driftwithoutNA <- driftm$residuals
driftwithoutNA <- driftwithoutNA[2:200]
var(driftwithoutNA)
mean(driftwithoutNA)

# Histogram of distribution
hist(meanm$residuals)

#Autocorrelation
acf(meanm$residuals)
