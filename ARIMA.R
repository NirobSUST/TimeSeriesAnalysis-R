#ARIMA

plot(lynx)


acf(lynx) ; pacf(lynx)

library(forecast)

auto.arima(lynx)

auto.arima(lynx, trace = T)

myar = auto.arima(lynx, stepwise = F, approximation = F)

myar

plot(forecast(myar, h = 3))
