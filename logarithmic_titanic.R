logdata<- read.csv("titanic_varun.csv", header =TRUE )
(logdata)
summary(logdata)
boxplot(logdata)
hist(logdata$age)
logdata$age[is.na(logdata$age)]=29
hist(logdata$age)
summary(logdata)
structure(logdata)
read(logdata)
logdata$female=ifelse(logdata$sex=="female",1,0)
logdata$portc=ifelse(logdata$embarked=="c",1,0)
logdata$ports=ifelse(logdata$embarked=="s",1,0)
(logdata)
summary(logdata)
logdata[,c(3,4,9),]
data2<-logdata[,-c(3,4,9),]
(data2)
box=boxplot(data2$age)
box$stats
ifelse(data2$age<4,4,data$age)
data3<-logdata[,-c(3,4,9),]
data3
data3$age=ifelse(data3$age<4,4,data3$age)
(boxplot(data3$age))
(box)
box2=boxplot(data3$age)
data3$age=ifelse(data3$age>52,52,data3$age)
(boxplot(data3$age))
box4=boxplot(data3$fare)
box4$stats
quantile(data3$fare,seq(0,1,0.01))
data3$fare=ifelse(data3$fare>136,136,data3$fare)
box4=boxplot(data3$fare)
box4$stats
?set.seed
set.seed(123)
index=sample(x=1:nrow(data3), size=0.7* nrow(data3))
train=data3[index,]
test=data3[-index,]
library(car)
mod=lm(survived~.,train)
summary(mod)
t=vif(mod)
?vif
model1=glm(as.factor(survived)~.,family="binomial",train)
str(data3$survived)
class(data3$survived)
(model1)
summary(model1)
stepmod= step(model1, direction = "both")
bestmodel=glm(as.factor(survived) ~ pclass + age + sibsp + female, family="binomial",train)
summary(bestmodel)
train$score= predict(bestmodel,newdata=train, type="response")
(train$score)
(train)
library(lattice)
library(ggplot2)
library(caret)
library(e1071)
library(Matrix)
install.packages("lattice")

library(InformationValue)
concord=Concordance(train$survived, train$score)
(concord)
ks_plot(train$survived,train$score)
plotROC(actuals=train$survived,predictedScores = bestmodel$fitted.values)
bestmodel$fitted.values
ks_plot(train$survived,bestmodel$fitted.values)
ks_stat(train$survived,bestmodel$fitted.values)
