# antes de empezar a codificar Lo primero que tenemos que hacer ya  teniendo en cuenta los requeriemientos y la amplitud de el problema
# es echarle un vistaso  a nuestro Dataset, es analizar los datos ver la naturaleza de estos, si entan sucios o no. 
# Despues de esto empezamos nuestro Dataset
# Metodo 1: Seleccionar el archivo manualmente
stats <- read.csv(file.choose())
stats
# Método 2: Establecer el directorio de trabajo y leer datos
getwd()
setwd("/home/karen/Documentos/Mineriadedatos/DataMining/Datasets/")
getwd()
movies <-  read.csv("Project-Data.csv")
colnames(movies) 
#Indicamos que columnas son las que utilizaremos de nuestro dataset 
#Genre, Studios, Budget, Groos %US respectivamente
movies <- movies [c(3,6,8,18)]

# cambiamos el nombre columnas
colnames(movies) <- c("Genre", "Studio", "BudgetM", "GrossUS")

#sera necesario filtrar por generos pues bien en el problema se plantea que los directivos del sitio web de
#reseñas de películas estan  interesado solo interesados en action, adventure, animation y comedy
# le asignaremos a movies solo aquellos que cumplan la condición logica movies$Genre== ...
#movies<-movies[movies$Genre=="action"|movies$Genre=="adventure"|movies$Genre=="animation"|movies$Genre=="comedy"|movies$Genre=="drama",]
#Por ende tambien estan intesados especificamente en los estudios como lo son Buena Vista Studios, Fox
#Paramount Pictures, Sony, Univerdal, WB
movies<-movies[((movies$Genre=="action"|movies$Genre=="adventure"|movies$Genre=="animation"|movies$Genre=="comedy"|movies$Genre=="drama") & (movies$Studio=="Buena Vista Studios" | movies$Studio=="Fox" | movies$Studio=="Paramount Pictures"|movies$Studio=="Sony" |movies$Studio=="Universal" |movies$Studio=="WB")), ]

# Visualizaremos nuestro dataset
head(movies) #Primeros Datos 
tail(movies) #Ultimos Datos
str(movies) #Estructura
summary(movies) #Resumen

# importamos la libreria ggplot2 para graficar y utlizar estetica
library(ggplot2)


# Cada color en la grafica lo sera determinado por Studio y Size por BudgetMIlllions
# Asignamos movies a nuestra variable u , determinamos que x sera para Genere en cuando a y
# sera para y="Gross%US" el color sera determinado por R y el size=BudgetMillions

u <- ggplot(movies, aes(x=Genre, y=GrossUS,
                        color=Studio, size=BudgetM))

# diagrama de caja
u + geom_boxplot()  

#superponer todos los puntos para ese grupo en cada diagrama de caja para tener una idea del tamaño de la muestra
#Esto se puede lograr mediante la adición de la geom_jitter
u +  geom_jitter() + geom_boxplot(size=0.3,color="Black") 


# Damos Formato a nuestro diagrama de caja

u + geom_jitter(shape=20) + geom_boxplot(size=0.3,alpha=0.5,color="Black",outlier.shape = NA)+
  theme(
  plot.title = element_text(family="Chandas",color="Black", size=12, face="bold", hjust = 0.5),
  axis.title.x = element_text(family="Chandas",color="purple", size=8, face="bold"),
  axis.title.y = element_text(family="Chandas",color="purple", size=8, face="bold")
)  +  ggtitle("Domestic Gross % by Genre") + ylab("Gross%US") 
# Por defecto, los puntos atípicos coinciden con el del cuadro. Utilizar outlier.shape para anular
#outlier.colour , outlier.shape , outlier.size : el color, la forma y el tamaño de los puntos periféricos