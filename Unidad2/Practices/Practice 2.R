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


# Select test and training
library(caTools)
set.seed(123)
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
test <- dfset(dataset, split == FALSE)
training <- dfset(dataset, split == TRUE)

# Simple Linear Regression
regressor = lm(formula = Profit ~ R.D.Spend, data = dataset)

summary(regressor) 

# Predicting of test
y_pred = predict(regressor, newdata = test_set) 

# Import Library
library(ggplot2)

# Training graph
ggplot() + geom_point(aes(x=training_set$R.D.Spend, y=training_set$Profit),
             color = 'black', size=2) +
  geom_line(aes(x = training_set$R.D.Spend, y = predict(regressor, newdata = training_set)),
            color = 'black') +
  ggtitle('Profit vs R.D.Spend (Training Set)') +
  xlab('R.D.Spend') +  ylab('Profit')

# Test grph
ggplot() + geom_point(aes(x=test_set$R.D.Spend, y=test_set$Profit),
             color = 'blue', size=2) +
  geom_line(aes(x = training_set$R.D.Spend, y = predict(regressor, newdata = training_set)),
            color = 'black') + ggtitle('Profit vs R.D.Spend (Test Set)') +
  xlab('R.D.Spend') + ylab('Profit')
