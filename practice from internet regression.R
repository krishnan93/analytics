# data from http://r-statistics.co/Linear-Regression.html

head(cars)

fit2=lm(dist ~ speed, data=cars)
summary(fit2)
predict(fit2, newdata=data.frame(speed=c(5,8)))
plot(fit2)

