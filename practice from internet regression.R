# data from http://r-statistics.co/Linear-Regression.html

head(cars)

fit2=lm(dist ~ speed, data=cars)
summary(fit2)
predict(fit2, newdata=data.frame(speed=c(5,8)))
plot(fit2)

# Create Training and Test data -
set.seed(100)  # setting seed to reproduce results of random sampling
trainingRowIndex <- sample(1:nrow(cars), 0.8*nrow(cars))  # row indices for training data
trainingData <- cars[trainingRowIndex, ]  # model training data
testData  <- cars[-trainingRowIndex, ]   # test data

# Build the model on training data -
lmMod <- lm(dist ~ speed, data=trainingData)  # build the model
distPred <- predict(lmMod, testData)  # predict distance

summary (lmMod)  # model summary
#> 
#> Call:
#> lm(formula = dist ~ speed, data = trainingData)
#> 
#> Residuals:
#>     Min      1Q  Median      3Q     Max 
#> -23.350 -10.771  -2.137   9.255  42.231 
#> 
#> Coefficients:
#>             Estimate Std. Error t value Pr(>|t|)    
#> (Intercept)  -22.657      7.999  -2.833  0.00735 ** 
#> speed          4.316      0.487   8.863 8.73e-11 ***
#> ---
#> Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#> 
#> Residual standard error: 15.84 on 38 degrees of freedom
#> Multiple R-squared:  0.674,  Adjusted R-squared:  0.6654 
#> F-statistic: 78.56 on 1 and 38 DF,  p-value: 8.734e-11
AIC (lmMod)  # Calculate akaike information criterion
#> [1] 338.4489

actuals_preds <- data.frame(cbind(actuals=testData$dist, predicteds=distPred))  # make actuals_predicteds dataframe.
correlation_accuracy <- cor(actuals_preds)  # 82.7%
head(actuals_preds)

(min_max_accuracy <- mean(apply(actuals_preds, 1, min) / apply(actuals_preds, 1, max)))
# => 58.42%, min_max accuracy
(mape <- mean(abs((actuals_preds$predicteds - actuals_preds$actuals))/actuals_preds$actuals) ) 
# => 48.38%, mean absolute percentage deviation
