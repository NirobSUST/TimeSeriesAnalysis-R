set.seed(95)

myts <- ts(rnorm(400), start = c(1919,1), frequency = 4)

#Training set (80% of whole time series)
mytstrain <- window(myts, start = 1919, end = 1999)

plot(mytstrain)

# The 3 models we want to test
library(forecast)
meanmodel <- meanf(mytstrain, h = 80)
naivemodel <- naive(mytstrain, h = 80)
driftmodel <- rwf(mytstrain, h = 80, drift = T)

#Extracting the test set
mytstest <- window(myts, start = 2000)

plot(mytstest)

accuracy(meanmodel, mytstest)
accuracy(naivemodel, mytstest)
accuracy(driftmodel, mytstest)
