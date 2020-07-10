# Select the file
stats <- read.csv(file.choose())
stats


#Set working directory and read data
getwd()
setwd('/home/davidmtz/Escritorio/JCROMERO/DataMining/Datasets')
getwd() 
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]

# The target feature is encoded as a factor to have columns at 0 and 1.
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

# Select test and training
install.packages ('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
test <- dfset(dataset, split == FALSE)
training <- dfset(dataset, split == TRUE)

# take the columns except the third
training[-3] = scale(training[-3])
test[-3] = scale(test[-3])

# SVM training 
install.packages ('e1071')
# Changed from "Linear" to "polynomial"
library(e1071)
classifier = svm(formula = Purchased ~ .,
                 data = training_set,
                 type = 'C-classification',
                 kernel = 'polynomial')

# Predict test
y_pred = predict(classifier, newdata = test[-3])
y_pred

# Confusion matrix
cm = table(test[, 3], y_pred)
cm
# When changing to Polomial increased 1 error from 20 (Linear) to 21 (Polinomial)
# and in terms of estimation decreased from 2 80 (Linear) to 78 (Polynomial)
# Display of training data results

library(ElemStatLearn)
set = training
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)

colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3],

     main = 'SVM (Training)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))

contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))


# Test Result
library(ElemStatLearn)

set = test
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)

colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'SVM (Test)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))

contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
