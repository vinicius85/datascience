#q1
data(mtcars)

fit <- lm(mtcars$mpg ~ factor(mtcars$cyl) + mtcars$wt)

summary(fit)

#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept)          33.9908     1.8878  18.006  < 2e-16 ***
#  factor(mtcars$cyl)6  -4.2556     1.3861  -3.070 0.004718 ** 
#  factor(mtcars$cyl)8  -6.0709     1.6523  -3.674 0.000999 ***
#  mtcars$wt            -3.2056     0.7539  -4.252 0.000213 ***

#q2
data(mtcars)

fit <- lm(mtcars$mpg ~ factor(mtcars$cyl))

summary(fit)

#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept)          26.6636     0.9718  27.437  < 2e-16 ***
#  factor(mtcars$cyl)6  -6.9208     1.5583  -4.441 0.000119 ***
#  factor(mtcars$cyl)8 -11.5636     1.2986  -8.905 8.57e-10 ***


#q3

data(mtcars)

fit <- lm(mtcars$mpg ~ factor(mtcars$cyl) * mtcars$wt)
summary(fit)

#q4
lm(mpg ~ I(wt * 0.5) + factor(cyl), data = mtcars)

#q5 and q6
x <- c(0.586, 0.166, -0.042, -0.614, 11.72)
y <- c(0.549, -0.026, -0.127, -0.751, 1.344)

fit <- lm(y ~ x)
round(lm.influence(fit)$hat,4)
round(dfbetas(fit),0)

