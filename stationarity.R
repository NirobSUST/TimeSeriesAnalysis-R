#Stationary
test = ts(c(rnorm(100,2,1), rnorm(100,50,1)),start = 1)

plot(test)

plot(diff(test))

#Unit Root Tests
x = rnorm(1000) #random normal data

library(tseries)
adf.test(x)

plot(nottem) #Seasonal data

adf.test(nottem)
