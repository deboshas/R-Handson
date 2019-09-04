#cars data set

str(cars)

#Person's R 
cor(cars$speed, cars$dist)

#Linear regression analysis

linearMod <- lm(dist ~ speed, data=cars)  # build linear regression model on full data
print(linearMod)

#Hypotheisis for liner  regression
summary(linearMod)
