#Quizz 4

#question 1
g1 <- c(140,138,150,148,135)
g2 <- c(132,135,151,146,130)

t.test(g1,g2, paired = TRUE)

#question 2
n <- 9
mu <- 1100
sd <- 30

z <- mu +  c(-1,1) * qt(.975,n-1) * sd/sqrt(n)
round(z,0)

#question 3
#discrete values:binom
binom.test(3,4,alt="greater")

#question 4
#poisson -> survival, recurrence analysis
poisson.test(x = 10, r = 0.01, alternative="less", T = 1787)

#question 7
n <- 100
mu <- 0.01
sd <- 0.04
p<- 0.05

power.t.test(n,delta = mu, sd=sd, sig.level = p, type = "one.sample", alternative = "one.sided")


#question 8d

mu <- 0.01
sd <- 0.04
power <- 0.9
sig <- 0.05

n <- power.t.test(power=power, delta=mu, sd=sd , sig.level=sig, type="one.sample", alt="one.sided")$n