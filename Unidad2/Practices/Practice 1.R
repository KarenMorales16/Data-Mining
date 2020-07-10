# Select the file
stats <- read.csv(file.choose())
stats

#Set working directory and read data
getwd()
setwd('/home/davidmtz/Escritorio/JCROMERO/DataMining/Datasets')
getwd() 
dataset <- read.csv('EdadPesoGrasas.csv')


# Select test and training
library(caTools)
set.seed(123)
split <- sample.split(dataset$peso, SplitRatio = 2/3)
test <- dfset(dataset, split == FALSE)
training <- dfset(dataset, split == TRUE)

# Simple linear regression
regressor = lm(formula =  peso ~ edad, data = dataset)
summary(regressor)

# Prediction of test
y_pred = predict(regressor, newdata = test)

# import library
library(ggplot2)

# Training graph
ggplot() + geom_point(aes(x=training_set$edad, y=training_set$peso), color = 'red') + geom_line(aes(x = training_set$edad, y = predict(regressor, newdata = training_set)), color = 'blue') +   ggtitle('peso vs edad (Training Set)') +   xlab('edad') +   ylab('peso')

# Test grph
ggplot() +  geom_point(aes(x=test_set$edad, y=test_set$peso), color = 'red') + geom_line(aes(x = training_set$edad, y = predict(regressor, newdata = training_set)), color = 'blue') +  ggtitle('peso vs edad (Test Set)') +   xlab('peso') +   ylab('edad')

