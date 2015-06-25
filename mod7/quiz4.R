#quiz4

#question1
library(MASS)
shuttle$useAuto <- as.numeric(shuttle$use=='auto')
fit <- glm(useAuto ~ factor(wind)-1, family = binomial, shuttle)
summary(fit)$coef

var <- exp(coef(fit))
var[1]/var[2]

#question2
fit <- glm(useAuto ~ factor(wind) + factor(magn) -1, family = binomial, shuttle)
summary(fit)$coef

var <- exp(coef(fit))
var[1]/var[2]

#question3
fit<-glm(useAuto ~ factor(wind), family = binomial, data = shuttle)
summary(fit)$coef

fit<-glm(1 - useAuto ~ factor(wind), family = binomial, data = shuttle)
summary(fit)$coef

#question4
fit<-glm(count~factor(spray)-1,data=InsectSprays,family=poisson)
summary(fit)$coef
var <- exp(coef(fit))
var[1]/var[2]

#question6
x <- -5:5
y <- c(5.12, 3.93, 2.67, 1.87, 0.52, 0.08, 0.93, 2.05, 2.54, 3.87, 4.97)
