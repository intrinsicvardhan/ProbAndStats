fxy<-function(x,y) {
  (2*(2*x+3*y))/5
}

library(pracma)

?integral2

integral2(fxy, 0, 1, 0, 1)$Q

hy<-function(y) {
  fxy(1,y)
}

integral(fy, 0, 1)

gx<- function(x) {
  fxy(x,0)
}

integral(fx, 0, 1)

soln_4<- function(x,y) {
  x*y*fxy(x,y)
}

integral2(soln_4, 0, 1, 0, 1)

f2xy<- function(x,y) {
(x+y)/30
}

x<- c(0:3)
y<- c(0:2)

mat<- matrix(c(f2xy(0, 0:2), f2xy(1, 0:2), f2xy(2, 0:2), f2xy(3, 0:2)),nrow = 4, ncol = 3, byrow = T)

mat

sum(mat)

?apply

marg_gx<-apply(mat, 1, sum)

marg_gx

marg_hy<- apply(mat, 2, sum)

ans5<- f2xy(0,1)*3

ans5

