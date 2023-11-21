data<-read.csv("C:\\Users\\avard\\Downloads\\Clt-data.csv")
?head
head(data, n = 5)

data[1:5,]

nrow(data)
ncol(data)

mean(data$Wall.Thickness)

str(data)

summary(data)

hist(data$Wall.Thickness, xlab = "Thickness", main = "Wall Thickness", col = "green")

?abline

abline(v = mean(data$Wall.Thickness), col = "red", lwd = 1.6)

s10<-c()

for(i in 1:1000) {
  x<-sample(data$Wall.Thickness, 10, replace = TRUE)
  s10 <- c(s10, mean(x))
}
s10
x

hist(s10, main = "Distribution of Sample Means", xlab = "Sample Means", col = "lightblue", border = "black")
