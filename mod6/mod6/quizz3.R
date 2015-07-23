#q1 - generating confidence interval
x <- 9
mean <- 1100
sd <- 30
f<-mean + c(-1,1)*qt(.975,x-1) * sd/sqrt(x)
round(f,0)

#q2
x <- 9
mean <- -2
v <- c (0.3, 2.6,2.1,1.5)
for(i in v){
  f <- mean + c(-1,1)*qt(.975,x-1) * i/sqrt(x)
  print(f)
}

#q3
n1 <- 10
n2 <- 10

m1 <- 3
s1 <- sqrt(0.6)

m2 <- 5
s2 <- sqrt(0.68)

sp <- sqrt( ((n1 - 1) * s1^2 + (n2-1) * s2^2) / (n1 + n2-2))
md <- m1 - m2
semd <- sp * sqrt(1 / n1 + 1/n2)
f <- md + c(-1, 1) * qt(.975, n1 + n2 - 2) * semd
round(f,2)

#q.6
n1 <- 100
n2 <- 100

m1 <- 4
s1 <- 0.5

m2 <- 6
s2 <- 2

#q7
n1 <- 9
n2 <- 9

m1 <- -3
m2 <- 1

s1 <- 1.5
s2 <- 1.8

sp <- sqrt( ((n1 - 1) * s1^2 + (n2-1) * s2^2) / (n1 + n2-2))
md <- m1 - m2
semd <- sp * sqrt(1/n + 1/n), 2)
f <- md + c(-1, 1) * qt(.95, n1 + n2 - 2) * semd
round(f,3)


#measure difference between two groups
difference <- g2 - g1
t.test(difference)$conf.int

f = (n_x-1)(S_x)^2+(n_y-1)(S_y)^2