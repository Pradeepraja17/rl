loan<-read.csv("S:/ML_Dataset/.csv")
str(loan)
#step 2
loan.subset<-loan[c('Creditability','Age..years.','Sex...Marital.Status','Occupation','Account.Balance','Credit.Amount','Length.of.current.employment','Purpose')]
str(loan.subset)
#step 3
head(loan.subset)
normalize<-function(x){
  return((x-min(x))/(max(x)-min(x)))
}
loan.subset.n<-as.data.frame(lapply(loan.subset[,2:8],normalize))
head(loan.subset.n)

#step 4
set.seed(123)
dat.d<-sample(1:nrow(loan.subset.n),size=nrow(loan.subset.n)*0.7,replace = FALSE) #random
train.loan  <-loan.subset[dat.d,] # 70% training data
test.loan <- loan.subset[-dat.d,] # remaining 30% test data
#Creating seperate dataframe for &#39;Creditability&#39; feature which is our target.
train.loan_labels <- loan.subset[dat.d,1]
test.loan_labels <-loan.subset[-dat.d,1]
 
#step 5
#install package 
library('class')
NROW(train.loan_labels)
knn.26 <- knn(train=train.loan, test=test.loan, cl=train.loan_labels, k=26)
knn.27 <- knn(train=train.loan, test=test.loan, cl=train.loan_labels, k=27)
#step 6
ACC.26 <- 100 * sum(test.loan_labels == knn.26)/NROW(test.loan_labels)
ACC.27 <- 100 * sum(test.loan_labels == knn.27)/NROW(test.loan_labels)
ACC.26
ACC.27
table (knn.26,test.loan_labels)
table(knn.27,test.loan_labels)

#install package 
library(caret)
confusionMatrix(table(knn.26 ,test.loan_labels))

#step7
i=1
k.optm=1
for (i in 1:28){
  knn.mod <- knn(train=train.loan, test=test.loan, cl=train.loan_labels, k=i)
  k.optm[i] <- 100 * sum(test.loan_labels == knn.mod)/NROW(test.loan_labels)
  k=i
  cat(k,'=',k.optm[i],'')
}
#Accuracy plot
plot(k.optm, type="b", xlab="K- Value",ylab="Accuracy level")
