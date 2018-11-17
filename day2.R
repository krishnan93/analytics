getwd
data<- read.csv("1000 Sales Records.csv")
write.csv("1000 Sales Records.csv")
write.csv(data)
df1
df1
df1
(rollno= 1:30)
(sname=paste("student",1:30))
(gender=sample(c('M','F'), size=30, replace=T, prob=c(0.7,0.3)))
(marks1=floor(rnorm(30, mean=50, sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'), size =30, replace=T, prob=c(0.5,0.5)))
rollno;sname;gender;marks1;marks2;course;

#create df
df1=data.frame(rollno, sname,gender, marks1, marks2, course, stringsAsFactors = F)
str(df1)
head(df1)
class(df1)
tail(df1, n=3)
summary(df1)
df1
df1$gender=factor(df1$gender)
df1$course=factor(df1$course)
df1
(rollno)
df1
