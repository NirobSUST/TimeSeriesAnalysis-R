#random uniform data between 10 to 45
mydata = runif(n = 50, min = 10, max = 45)

#packing into a quarterly time series
mytimeseries = ts(data = mydata, start = c(1956,3), frequency = 4)

plot(mytimeseries)

class(mydata)

class(mytimeseries)

class(lynx)

#a typical mts data set
class(EuStockMarkets); head(EuStockMarkets)
