plot(lynx)

acf(lynx, lag.max = 20)

pacf(lynx, lag.max = 20)

acf(rnorm(500), lag.max = 20)

pacf(rnorm(500), lag.max = 20)

