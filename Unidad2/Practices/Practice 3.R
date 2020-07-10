# Select the file
stats <- read.csv(file.choose())
stats

#Set working directory and read data
getwd()
setwd('/home/davidmtz/Escritorio/JCROMERO/DataMining/Datasets')
getwd() 
dataset <- read.csv('50_Startups.csv')

# Categorical data
dataset$State = factor(dataset$State, levels = c('New York', 'California', 'Florida'), labels = c(1,2,3))
dataset

# Select test and training
library(caTools)
set.seed(123)
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
test <- dfset(dataset, split == FALSE)
training <- dfset(dataset, split == TRUE)

# Atomation BackwardElimination Function
backwardElimination <- function(x, sl) {
  numVars = length(x)
  for (i in c(1:numVars)){
    regressor = lm(formula = Profit ~ ., data = x)
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j]
    }
    numVars = numVars - 1
  }
  return(summary(regressor))
}

SL = 0.05
training
backwardElimination(training, SL)

