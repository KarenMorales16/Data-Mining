? rnorm ()
n <- 100
rnorm ( n , media  =  0 , sd  =  1 )

?C()
c ( 1 , 1 : 100 )

? seq ()
seq ( 30 , 3 , longitud.out  =  12 )
seq ( 3 , 30 , por  =  3 )

?rep()
representante ( 1 : 10 , 5 )
rep ( 1 : 4 , each=40 )   
rep ( 1 : 4 , each=2 , veces  =  2 )

?impresión()
t1  <- c ( 1 : 10 )
t2  <- seq ( 3 , 30 , por = 3 )
print ( t1 + t2 )
print ( t1 * t2 )
print (tabla ( t1 , t2 ), zero.print  =  " X " )

? is.numeric ()
is.numeric ( t1 )
is.numeric ( " -.1 2.7 B " )
as.numeric ( t1 )

? is.integer ()
x  <-  pi  * c ( 1 : 10 )
as.integer ( x )


? is.double ()
n <- 5
fibonnaci  <- (((((( 1 + sqrt ( 5 )) / 2 ) ^ n ) - (((( 1 - sqrt ( 5 )) / 2 ) ^ n ))) / sqrt ( 5 ))
is.double ( fibonnaci )

? is.character ()
Karen  <-  N  ~  o  +  h  +  e  ~  m  ~  i
como.carácter ( Karen )
is.character ( Karen )

?tipo de()
David  <-  D ~  A  +  V  +  I  + D 
typeof ( David )

? sqrt ()
a <- 10
b <- 24
c <- 3
fibonnaci  <- (((((( 1 + sqrt ( 5 )) / 2 ) ^ n ) - (((( 1 - sqrt ( 5 )) / 2 ) ^ n ))) / sqrt ( 5 ))
y <-  - b + sqrt ( b ^ 2 - ( 4 ( a * c ))) / 2 * a

#1
?names()

x <- c(2,4,6)  #Assign 3 values to the variable x
names(x) <- c("I","II","III")  # Assigns names to the previous 3 values
x

#2
cat() # This function writes text and variables in the output.

x <- 2
y <- 4
cat(x,"elevado a",y,"es",x ^ y,"\n")

#3
invisible () #Hide x in the return function so that the result is not visible.

suma <- function(a, b) {
  s <- a + b
  return(invisible(s))
}
suma(5,4)

#4
length () # Shows the number of elements in a vector

x <- 1:20 # The numbers from 1 to 20 are saved in x
length (x) # Number of elements of x

#5
trunc () # Remove decimals from a number

trunc (1.999999)

#6
round (x, decimals = 0) # Round a number with decimals

round (6.78) # By not indicating decimals the result is an approximate integer

round (6.78.1) # It is rounded with a decimal

#7
sum (x) #Add all the elements of a vector x

x <- runif (100,1,10) # 100 random numbers are generated between 1 and 10 and saved in the variable x
sum (x) # Sum of the 100 random numbers

#8
edad <- function() {
  r <- readline("Escribe tu edad : ")
  r <- as.integer(r)  # Convierte r en un entero. Si se desean decimales usar as.double()
  rmas1 <- r + 1
  cat("Dentro de un año tendrás",rmas1,"años\n")
  return(invisible(rmas1))
}

edad()

#9
any () #Returns T if any element meets the condition Example:

x <- runif (10, -10, 100) # 10 random numbers between -10 and 100 are generated
if (any (x <0)) cat ("In x there are negative numbers \ n") # If any numbers of x are negative

#10 
coef() #Coef is a generic function which extracts model coefficients from objects returned by modeling functions.

x <- 1:5; coef(lm(c(1:3, 7, 6) ~ x))

#11
hist(rnorm(200)) # Generate a histogram of the 200 random numbers with normal distribution

#12
?min() #Returns the minima of the input values.
m <- runif (100,1,10)
min(m)

#13
?max() #Returns the maxima of the input values.
max(m)

#14
?filter() #Applies linear filtering to a univariate time series or to each series separately of a multivariate time series.
x <- 1:100
filter(x, rep(1, 5))

#15
?cor() #var, cov and cor compute the variance of x and the covariance or correlation of x and y if these are vectors. If x and y are matrices then the covariances (or correlations) between the columns of x and the columns of y are computed.
cor(1:10, 2:11) 

#16
?lag.plot() #Plot time series against lagged versions of themselves. Helps visualizing 'auto-dependence' even when auto-correlations vanish.
lag.plot(freeny.x, lags = 3)

#18
?rcauchy() #Density, distribution function, quantile function and random generation for the Cauchy distribution with location parameter location and scale parameter scale
rcauchy(n, location = 0, scale = 1)

#19
?ave() #Subsets of x[] are averaged, where each subset consist of those observations with the same factor levels.
ave(1:4) 

#20
?cor() var, cov and cor compute the variance of x and the covariance or correlation of x and y if these are vectors.

cor(1:10, 2:11)

#21
f <- function (x, a) (x - b)^2
xmin <- optimize(f, c(0, 1), tol = 0.0001, a = 1/3)
xmin
