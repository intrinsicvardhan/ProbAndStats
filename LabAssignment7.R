?rt

n<- 100
df<- n-1

data<-rt(n,df)

?hist

hist(data)

df<- c(2,10,25)

hist(rchisq(n,2))

hist(rchisq(n,10))

hist(rchisq(n,25))

?seq

set.seed(0)
x<-seq.int(-6, 6, length.out = 100)

?dt
df<- c(1,4,10,30)
dt(x, df)

tdist1<-dt(x, df[1])
tdist4<-dt(x, df[2])
tdist10<-dt(x, df[3])
tdist30<-dt(x, df[4])

plot(x, tdist30, col = "yellow", xlab = "Input", ylab = "Distribution", main = "T Distribution", type = "l")
  lines(x, tdist10, col = "blue")
  lines(x, tdist4, col = "green")
  lines(x, tdist1, col = "red")

#Write an r code to find the 95th percentile of the f distribution with 10, 20 degrees of freedom
  
??qfdist
  
qf(0.95, 10, 20)

 ?pf   


#4 <i>
plot(x, df(x,10,20))
plot(x, pf(x, 10, 20))

?pf

arr1<- pf(1.5, 10, 20)
arr2<- 1- pf(1.5, 10,20, lower.tail = FALSE)

arr1
arr2

?qf
qf(0.25, 10, 20)
qf(0.50, 10, 20)
qf(0.75, 10, 20)
qf(0.99, 10, 20)

hist(rf(1000, 10, 20), xlab = "Values", ylab = "Distribution")
