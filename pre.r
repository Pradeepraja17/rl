setwd("S:/ML_Dataset")
mydata<-read.csv(file="mysampledata.csv")
mydata
mydata$age<-ifelse(is.na(mydata$age),ave(mydata$age,FUN = function(x)mean(x,na.rm=TRUE)),mydata$age)
mydata
mydata$salary<-ifelse(is.na(mydata$salary),ave(mydata$salary,FUN=function(x)mean(x,na.rm=TRUE)),mydata$salary)
mydata
mydata$age<-as.numeric(format(round(mydata$age,0)))
mydata

#Dealing With Categorical Data
mydata$nation<-factor(mydata$nation,levels=c('India','Russia','Germany'),labels=c(1,2,3))
mydata
mydata$purchased_item<-factor(mydata$purchased_item,levels=c('No','Yes'),labels=c(0,1))
mydata

#Splitting The Dataset Into Training And Testing Sets

install.packages('caTools') #install once
library(caTools) # importing caTools library
set.seed(123)
split <-sample.split(dataset$purchased_item, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)


#Scaling the Features

training_set[,3:4] = scale(training_set[,3:4])
test_set[,3:4] = scale(test_set[,3:4])

