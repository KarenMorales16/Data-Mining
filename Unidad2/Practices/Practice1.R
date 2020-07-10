#Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev=1:

#Create an R script that will count how many of these numbers fall between -1 and 1 and divide by the total quantity of N

#You know that E(X) = 68.2%
#Check that Mean(Xn)->E(X) as you rerun your script while increasing N

#Hint:
#1. Initialize sample size
n<-10000

#2. Initialize counter
contador <-0
resultado <-0
  
#3. loop for(i in rnorm(size))
for(i in 1:n)
{
  Norm <- rnorm(i, mean = 0, sd = 1)
  
#4. Compruebe si la variable iterada cae
  if(Norm >=-1 && Norm  <=1){
    #5. Aumente el contador si la condición es verdadera
    contador<- contador+1
 
  }
}

#6. devolver un resultado <- contador / N
resultado <-contador/n
print(contador)
print(resultado) 
