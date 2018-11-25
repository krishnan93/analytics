stock<- read.csv("stock_pred.csv" , header=TRUE)
(stock)
stock
class(stock)
?ts
timeseriesData=ts(stock[,1], start=2008, frequency = 12)
timeseriesData
plot(timeseriesData)
?stl
stl1=stl(timeseriesData, s.window="periodic")
(stl1)
plot(stl1)
(stock_hws=HoltWinters(timeseriesData))
?HW
plot(stock_hws)
pred1=predict(stock_hws, n.ahead=12)
(pred1)
