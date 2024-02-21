mushroom<-read.csv("S:/ML_Dataset/mushrooms.csv",header=FALSE)
head(mushroom)
colnames(mushroom)<-c("class","cap.shape","chap.surface","cap.colour","bruises","odor","gill.attachment","gill.spacing",
                      "gill.size","gill.color","stalk.shape","stalk.root","stalk.surface.above.ring",
                      "stalk.surface.below.ring","stalk.color.above.ring","stalk.color.below.ring","veil.type","veil.color",
                      "ring.number","ring.type","print","population","habitat")
head(mushroom)
# Define the factor names for "Class"
levels(mushroom$Class) <- c("Edible","Poisonous")

# Define the factor names for "odor"
levels(mushroom$odor) <- c("Almonds","Anise","Creosote","Fishy","Foul","Musty","None","Pungent","Spicy")
# Define the factor names for "print"
levels(mushroom$print) <- c("Black","Brown","Buff","Chocolate","Green","Orange","Purple","White","Yellow")
head(mushroom)

# Import our required libraries
#install package
library(rpart)
library(rpart.plot)

# Create a classification decision tree using "Class" as the variable we want to predict and everything else as its predictors.
myDecisionTree <- rpart(class ~ ., data = mushroom, method = "class")

# Print out a summary of our created model.
print(myDecisionTree)
rpart.plot(myDecisionTree, type = 3, extra = 2, under = TRUE, faclen=5, cex = .75)
newCase  <- mushroom[10,-1]
newCase
predict(myDecisionTree, newCase, type = "class")
train_ind <- sample(c(1:nrow(mushroom)), size = 10)

## 75% of the sample size
n <- nrow(mushroom)
smp_size <- floor(0.75 * n)

## set the seed to make your partition reproductible
set.seed(123)
train_ind <- sample(c(1:n), size = smp_size)

mushroom_train <- mushroom[train_ind, ]
mushroom_test <- mushroom[-train_ind, ]
newDT <- rpart(class ~ ., data = mushroom_train, method = "class")
result <- predict(newDT, mushroom_test[,-1], type = "class")
head(result)
head(mushroom_test$Class)
table(mushroom_test$class, result)
