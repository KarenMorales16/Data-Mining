### Evaluation U3
> Load Library Packages
 ```R
install.packages("naivebayes")
library(e1071)
library(naivebayes)
library(caret)
```
> Load and analyze the data set Load the data stored in csv format as a DataFrame.
 ```R
getwd()
setwd("/home/karen/Documentos/Mineriadedatos/DataMining/MachineLearning/LogisticRegression")
getwd()

dataset <- read.csv('Social_Network_Ads.csv')
```

> Show dataset
 ```R
View(dataset)
```
> Naive Bayes requires that all variables be categorized therefore by
> simplicity and make it easier for us to change Purchased to category 0. NO 1.YES
```R
Purchased<- ifelse(dataset[,5]>0,"Yes",ifelse(dataset[,5]<0,"No","No"))
```
> We create a new dataframe with only the data we need
```R
model<- data.frame(dataset[1:4],Purchased)
View(model)
```
> we add the seed that helps us to give alertness
```R
set.seed(2018)
```
> training set
> We split our data into the training set
> the Purchased variable is the one we want to predict if it has been
> made or not a purchase with a probability of 0.67
```R
t.ids <- createDataPartition(model$Purchased, p=0.6, list = F)
```
> We have our naiveBayes model going to try to predict Purchased
> depending on the others but only taking their trainin id
```R
Naive_Bayes_Model <-naiveBayes(Purchased ~ ., data= model[t.ids,], type="class")
```

> our model has 5 variables
> the model has made predictions with discrete predictors because it takes discrete values ​​(a set of discrete values)
> we have the probabilities in which we have 0.64 NO and YES 35
> we have all the filters Gender, age, estimated salary which indicate if it influences the purchase or not
```R
Naive_Bayes_Model
```

> Evaluation stage
> we are going to test the model with the predict function we will create the prediction with the Naive_Bayes_Model
> regarding those data that were not taken to predict outside the train.id
```R
pred.pruned <- predict (Naive_Bayes_Model, model[-t.ids,])
```
> we are going to visualize with a matrix
> we are going to create a table to see how much data was left inside or outside
> we compare our model [-t.ids,] $ Purchased current values, pred.pruned prediction values
```R
tab<-table(model[-t.ids,]$Purchased, pred.pruned,dnn = c("Actual","Predicion"))
```
> Confusion matrix to verify accuracy
```R
confusionMatrix(tab)
```
> We have an efficiency of 0.89%, it is a little low result given that 6 NO as YES, but 15 NO as YES
> confidence interval (0.8432, 0.9335)
```R
train <- model[t.ids,]
test <-model[-t.ids,]
```

> The naiveBayes function assumed Gaussian distributions for numeric variables.
> Furthermore, the predictions are calculated from the proportion of the training data.
> The priorities are displayed when the object is printed.
> Y values ​​are the means and standard deviations of the predictors within each class.
> Now let's make a prediction for the training data and for the test data.

```R
printALL=function(model){
  trainPred=predict(Naive_Bayes_Model, newdata = train, type = "class")
  trainTable=table(train$Purchased, trainPred)
  print(trainTable)
  print(1-sum(diag(trainTable))/sum(trainTable))
  testPred=predict(Naive_Bayes_Model, newdata=test, type="class")
  testTable=table(test$Purchased, testPred)
  print(testTable)
  print(1-sum(diag(testTable))/sum(testTable))
  
}

printALL(model)
```