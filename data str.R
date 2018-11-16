#DATA structures in R
#vectors ----
x=1:10   #create seq of nos from 1 to 10
x
x2=c(1,2,313,4,5)
class (x2)
x3=(letters[1:10])
x3
x4=c("rgrg",5,"y")
x4
class(x4)
x5=c(T,TRUE,FALSE,F,F,T)
x5
class(x5)
x6= seq(0,100, by=5)
x6
x7= seq(0,100, by=1.5)
x7
seq(1,5, 0.1)
x5[3]
x5[2:3]
x5[c(2,3)]
x6(-1)
x6[-1]
x6[-c(2,5,8)]
x8=seq(0:1000)
x8
x9=x8[x8>500 & x8<510]
x9
length(x9)
x9[-(length(x9)-1)]
a1=sample(1:50)
a1
sort(a1)
sort(a1, decreasing = T)
sum(30,40)
sum(a1)
a1[2]<- 99
a1
a1[2:11]<-99
a1
a1[a1>30 & a1<40]<-99
a1
a2= a1[1:4]
a2
a3
x=NULL
x=rnorm(100)
x
x[50]
mean(x)
plot(x)
plot(density(x))
x1=rnorm(100000)
x1
plot(density(x1))
mean(x1)
abline(v=mean(x1), h=0.2)
hist(x1)
hist(x1, fre=F)
lines(density(x1), col=2)
m1=matrix(1:12, ncol=6)
attributes(m1)
dim(m1)
m1[1,]
m2=matrix(1:20, ncol=4)
m2[2,]
m2[-c(1,3),]
m2
paste("c","D")
paste("row", "col", sep=)
paste("row", 1:4)
colnames(m2)=paste("row",1:4, sep=)
m2
rbind(m2,m2)
colSums(m2)
rowSums(m2)
sweep(m2, MARGIN = 1, STATS = c(2,3,4,4), FUN = "+")
m2
addmargins(m2,c(1,2),mean)
