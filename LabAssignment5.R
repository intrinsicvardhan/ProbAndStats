#Experiment 5
#Probability and Stats

#U(0,60) # 0 is the mean and 60 is the sd
1-punif(45, min  = 0, max = 60)

punif(30, min = 0, max = 60)- punif(20, min = 0, max = 60)

#Question 2
#The time (in hours) required to repair a machine is an exponential distributed random variable with lambda = 1/2

dexp(3, rate = 1/2)

#Question 2b
x<-c(0:5)
y<-dexp(x)

plot(x,y)

#c
pexp(3,rate = 1/2)

#d 
y1<-pexp(x)
plot(x,y1)

#e
?rexp
y<-rexp(1000, rate = 1/2)
x<-c(1:1000)
plot(x,y)

#Question 3
?pgamma
#Shape = apha and scale = beta
1-pgamma(1, shape = 2, scale = 1/3)
?qgamma
qgamma(0.7, shape = 2, scale = 1/3)
