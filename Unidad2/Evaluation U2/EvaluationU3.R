# Cargar Paquetes de Librerias
install.packages("naivebayes")
library(e1071)
library(naivebayes)
library(caret)

# Cargar y analizar el conjunto de datos Cargue los datos almacenados en formato csv como un DataFrame.
getwd()
setwd("/home/karen/Documentos/Mineriadedatos/DataMining/MachineLearning/LogisticRegression")
getwd()
dataset <- read.csv('Social_Network_Ads.csv')
#Mostrar dataset
View(dataset)
#Naive Bayes requiere que todas las variables sean categorias por ende por 
#simplicidad y facilitarnos  cambiaremos Purchased a la categoria 0. NO 1.SI
Purchased<- ifelse(dataset[,5]>0,"Yes",ifelse(dataset[,5]<0,"No","No"))
#Creamos un nuevo dataframe con solo los datos que necesitamos
model<- data.frame(dataset[1:4],Purchased)
View(model)
#agregamos la semilla que nos ayuda para dar aleteoridad
set.seed(2018)
# conjunto de entreamiento
# Partimos nuestros datos en el  conjunto de entrenamiento
#la variable Purchased es la cual queremos predecir si se ha 
#efectuado o no una compra con una probabilidad de 0.67
t.ids <- createDataPartition(model$Purchased, p=0.6, list = F)
#Tenemos nuestro modelo naiveBayes va tratar de predecir Purchased 
# en funcion a las otros pero solo tomando su trainin id
Naive_Bayes_Model <-naiveBayes(Purchased ~ ., data= model[t.ids,], type="class")
#nuestro modelo tiene 5 variables
# el modelo ha hecho prediciones con predictores discretos por que toma valores discretos (un conjunto de valores discretos)
# tenemos las probabilidades en las cuales tenemos 0.64 NO y SI 35
# tenemos todos los filtros Género, edad, salario estimado  loc cuales nos indican si influye en que se realice o no la compra
Naive_Bayes_Model

#Etapa de evaluación
#vamos a probar el modelo con la funcion predict creacremos la predicion con el Naive_Bayes_Model 
# con respecto a aquellos datos que no fueron tomados para predecir fuera de los train.id
pred.pruned <- predict (Naive_Bayes_Model, model[-t.ids,])
# vamos a  visualizar con una matriz
# vamos crear una  tabla para ver cuantos datos quedaron dentro o fuera
# comparamos nuestro model[-t.ids,]$Purchased valores acuales , pred.pruned valores prediccion
tab<-table(model[-t.ids,]$Purchased, pred.pruned,dnn = c("Actual","Predicion"))
# Matriz de confusión para verificar la precisión
confusionMatrix(tab)
#tenemos una eficacia de 0.89% , es un resultado un poco bajo dado a que a catalogado 6 NO como SI, pero 15 NO como SI 
# intervalo de confianza (0.8432, 0.9335)
train <- model[t.ids,]
test <-model[-t.ids,]

#La función naiveBayes supuso distribuciones gaussianas para variables numéricas. 
#Además, las prediciones se calculan a partir de la proporción de los datos de entrenamiento.
#Las prioridades se muestran cuando se imprime el objeto.
#Los valores Y son las medias y las desviaciones estándar de los predictores dentro de cada clase.
#Ahora hagamos una predicción para los datos de entrenamiento y para los datos de prueba.
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

#Tabla de contingencia para datos de entrenamiento
#Tabla de contingencia para datos de prueba
## Exactitud
printALL(model)