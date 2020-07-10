# Cargar y analizar el conjunto de datos Cargue los datos almacenados en formato csv como un  Dataset.
getwd()
setwd("/home/karen/Escritorio/Programas/Examen/iris")
getwd()
dataset = read.csv('iris.csv')

#Vizualizar el Dataset
head(dataset)
#indica cuantas clases optenemos  de columna species 
dataset.class<- dataset[,"species"]
# Utilizaremos solos las columnas cuantitativas, ya que K-means
# es un algoritmo basado en distancias
dataset = dataset[1:4]
head(dataset)

#Fijar la semilla 
set.seed(6)

# Usando el "elbow method"   para encontrar el número óptimo de grupos( la cantidad óptima de centroides k )
# basado en wcss ( la suma de los cuadrados dentro de cada grupo)
wcss = vector()
#calculados los valores de WCSS en función de la cantidad de centroides k,
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
library(ggplot2)
ggplot() + geom_point(aes(x = 1:10, y = wcss), color = 'blue') + 
  geom_line(aes(x = 1:10, y = wcss), color = 'blue') + 
  ggtitle("Método del Codo") + 
  xlab('Cantidad de Centroides k') + 
  ylab('WCSS')


# Ajuste de K-Means al conjunto de datos
set.seed(29)
#Finalmente, podemos aplicar el algoritmo a nuestro conjunto de datos  con la cantidad de k seleccionada con centers =3
kmeans = kmeans(x = dataset, centers = 3)
# Visualizamos las inercias
names(kmeans) #contenido del objeto
kmeans$totss #inercia total
kmeans$betweenss #inercia entre grupos entre mas alta mejor
kmeans$withinss #inercia dentro de los grupos 1 para cada uno
kmeans$tot.withinss #inercia dentro de los grupos total ,la suma de inercias , preferentemente menor

#Veamos el resultado del agrupamiento:
y_kmeans = kmeans$cluster
# vemos como han sido asignada las observaciones a los diferentes closter la observacion 1 a la 1 ,la 3 a la 2
y_kmeans

# matrix  de confucion
table(dataset.class,kmeans$cluster,dnn=c("Species","Cluster number"))

# Visualizando los clusters
library(cluster)
clusplot(dataset,
         y_kmeans,
         lines = 0,
         shade = FALSE,
         color = TRUE,
         labels = 4,
         plotchar = TRUE,
         span = TRUE,
         main = paste('Clusters of iris'),
)

# Customize upper panel


upper.panel<-function(x, y){
  points(x,y, pch=19, col=c("red", "green", "blue")[dataset.class])
  r <- round(cor(x, y), digits=2)
  txt <- paste0("R = ", r)
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  text(0.5, 0.9, txt)
}

pairs(dataset, main = "Data(iris) -- 3 Especies",pch = 21,bg = c("red","green3", "blue")[dataset.class])
