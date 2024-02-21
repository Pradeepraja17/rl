
usedcars <- read.csv("S:/ML_Dataset/usedcars.csv", stringsAsFactors = FALSE)

str(usedcars)
print(head(usedcars))
max1=max(usedcars$price)
print(max1)

min1=min(usedcars$price)
print(min1)

range =max1-min1
print(range)
r=range(usedcars$price)
print(r)
 
variance=var(usedcars$price)
print(variance)

std=sd(usedcars$price)

min1=min(usedcars$price)
print(min1)

