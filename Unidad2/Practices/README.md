
DataMining`> Unit1-Programming-with-R`

## Unit 1: Programming-with-R

Welcome to the Programming course with R!
In this first module we are going to learn how R works and write our first lines of code.


### OBJECTIVE

- Learn the fundamentals of R, object-oriented programming, loop operation, data exploration and time series to efficiently structure codes and databases, do predictive analysis and automate processes.

## Index
- [First Practice (Nomral Distribition)](#first-practice)
- [Second Practice (20 Functions in R)](#second-practice)
- [Third Practice (Financial Statement)](#third-practice)
- [Fourth Practice (Basketball Data)](#fourth-practice)
- [Fifth Practice (Filters)](#fifth-practice)
- [Examen U1](#examen-u1)



### ADDITIONAL RESOURCES

Use the following resources that will serve as support throughout the module:
- #### - [jcromerohdz/DataMining](https://github.com/jcromerohdz/DataMining)

### First Practice
```
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
 
  #4. Check if the iterated variable falls
  if(Norm >=-1 && Norm  <=1){
    #5. Increase the counter if the condition is true
    contador<- contador+1
    
  }
}
```
### Second Practice
```R
? rnorm ()
n <- 100
rnorm ( n , media  =  0 , sd  =  1 )

?C()
c ( 1 , 1 : 100 )

? seq ()
seq ( 30 , 3 , longitud.out  =  12 )
seq ( 3 , 30 , por  =  3 )

?reps()
representante ( 1 : 10 , 5 )
rep ( 1 : 4 , cada uno  =  40 )   
rep ( 1 : 4 , cada uno  =  2 , veces  =  2 )

?impresión()
t1  <- c ( 1 : 10 )
t2  <- seq ( 3 , 30 , por = 3 )
imprimir ( t1 + t2 )
imprimir ( t1 * t2 )
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


# Practique encontrar 20 funciones más en R y haga un ejemplo de ello.
```
#1
>Functions to get or set the names of an object.

?names()

x <- c(2,4,6)  #Assign 3 values to the variable x
names(x) <- c("I","II","III")  # Assigns names to the previous 3 values
x

#2
> cat() # This function writes text and variables in the output.

x <- 2
y <- 4
cat(x,"elevado a",y,"es",x ^ y,"\n")

#3
>invisible () #Hide x in the return function so that the result is not visible.

suma <- function(a, b) {
  s <- a + b
  return(invisible(s))
}
suma(5,4)

#4
> length () # Shows the number of elements in a vector

x <- 1:20 # The numbers from 1 to 20 are saved in x
length (x) # Number of elements of x

#5
> trunc () # Remove decimals from a number

trunc (1.999999)

#6
>ceiling takes a single numeric argument x and returns a numeric vector containing the smallest integers not less than the corresponding elements of x.

round (x, decimals = 0) # Round a number with decimals

round (6.78) # By not indicating decimals the result is an approximate integer

round (6.78.1) # It is rounded with a decimal

#7
>sum returns the sum of all the values present in its argument
>
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
> any () #Returns T if any element meets the condition Example:

x <- runif (10, -10, 100) # 10 random numbers between -10 and 100 are generated
if (any (x <0)) cat ("In x there are negative numbers \ n") # If any numbers of x are negative

#10 
> coef() #Coef is a generic function which extracts model coefficients from objects returned by modeling functions.

x <- 1:5; coef(lm(c(1:3, 7, 6) ~ x))

#11
hist(rnorm(200)) # Generate a histogram of the 200 random numbers with normal distribution

#12
> Returns the (regular or parallel) maxima and minima of the input values.
? min ()
m  <- runif ( 100 , 1 , 10 )
min ( m )

#13
> Returns the (regular or parallel) maxima and minima of the input values.
? max ()
max ( m )

#14
> Applies linear filtering to a univariate time series or to each series separately of a multivariate time series.
?filter()
x  <-  1 : 100
filter ( x , rep ( 1 , 5 ))

#15
> var, cov and cor compute the variance of x and the covariance or correlation of x and y if these are vectors. If x and y are matrices then the covariances (or correlations) between the columns of x and the columns of y are computed.
? cor ()
cor ( 1 : 10 , 2 : 11 )

#16
> Plot time series against lagged versions of themselves. Helps visualizing ‘auto-dependence’ even when auto-correlations vanish.

? lag.plot ()
lag.plot ( freeny.x , lags  =  3 )

#18
> Density, distribution function, quantile function and random generation for the Cauchy distribution with location parameter location and scale parameter scale.
? rcauchy ()
rcauchy ( n , ubicación  =  0 , escala  =  1 )

#19
> Subsets of x[] are averaged, where each subset consist of those observations with the same factor levels.

?ave()
ave ( 1 : 4 )

#20
> var, cov and cor compute the variance of x and the covariance or correlation of x and y if these are vectors. If x and y are matrices then the covariances (or correlations) between the columns of x and the columns of y are computed.

? cor ()
cor ( 1 : 10 , 2 : 11 )

#21
f  <-  función ( x , a ) ( x  -  b ) ^ 2
xmin  <- optimize ( f , c ( 0 , 1 ), tol  =  0,0001 , un  =  1 / 3 )

### Third Practice

Scenario: You are a Data Scientist working for a consulting firm. One of your colleagues from the Auditing Department has asked you to help them assess the financial statement of organization X.

You have been supplied with two vector of data: mounthly revenue and expenses for the financial year in quiestion. Your task is to calculate the following financial matrics:

- profit for each mounth
- profit after tax for each month (the tax rate is 30%)
- profit margin for each month - equal to profit after tax divided by revenue
- good months - where the profit after tax was greater than the mean for the year
- bad months - where the profit after tax was less then the mean for years
- the best month - where the profit after tax was max for the year
- the worst month - where the profit after tax was min for the year

All results need to be presented as vectors.

Results for dollar values need to be calculate with $0.01 precision, but need to be presented in Units of $1,000(i.e. 1k) with no decimal point.

Results for the profit margin ratio needed to be presented in units of % with no decimal points.

Note: Your collegue has warned you that it is okay for tax for any given month to be negative (in accounting terms, negative tax translates into a deferred tax asset).

```
Hint 1
Use:
round()
mean()
max ()
min ()
```
```
#Data
ingresos <- c (14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
gastos <- c (12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <-ingresos -gastos
profit

# Calculate the tax as 30% of the profit and round to 2 decimal points
tax <- round(0.30 * profit, 2)
tax


# Calculate remaining earnings after deducting taxes
profit.after.tax <- profit - tax
profit.after.tax

# Calculate profit margin as profit after income taxes
# Rounded to 2 decimal points, then multiply by 100 to get%
#
profit.margin <- round(profit.after.tax/ingresos, 2) * 100
profit.margin

# Calculate the average after-tax benefit for the 12 months
mean_pat <- mean(profit.after.tax)
mean_pat

#Find the months with higher than average earnings after taxes
good.months <- max(profit, mean_pat)
good.months
# Bad months are the opposite of good months!
bad.months <-  min(profit, mean_pat)
bad.months

# 8 The Best Month Is Where Profit After Tax Was Equal To The Maximum
best.month <- profit.after.tax == max(profit.after.tax)
best.month

# 9 The Worst Month Is Where Profit After Tax Was Equal To The Minimum
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

# 10 Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses/ 1000, 0)
profit.1000 <- round(profit/1000,0)
profit.after.tax.1000 <- round(profit.after.tax/1000, 0)
```
### Fourth Practice

You have been supplied data for two more additional in-game statistics:
* Free Throws
* Free Throws Attempts
```R
#Seasons
Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Players
Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Free Throws
KobeBryant_FT <- c(696,667,623,483,439,483,381,525,18,196)
JoeJohnson_FT <- c(261,235,316,299,220,195,158,132,159,141)
LeBronJames_FT <- c(601,489,549,594,593,503,387,403,439,375)
CarmeloAnthony_FT <- c(573,459,464,371,508,507,295,425,459,189)
DwightHoward_FT <- c(356,390,529,504,483,546,281,355,349,143)
ChrisBosh_FT <- c(474,463,472,504,470,384,229,241,223,179)
ChrisPaul_FT <- c(394,292,332,455,161,337,260,286,295,289)
KevinDurant_FT <- c(209,209,391,452,756,594,431,679,703,146)
DerrickRose_FT <- c(146,146,146,197,259,476,194,0,27,152)
DwayneWade_FT <- c(629,432,354,590,534,494,235,308,189,284)

#Free Throw Attempts
KobeBryant_FTA <- c(819,768,742,564,541,583,451,626,21,241)
JoeJohnson_FTA <- c(330,314,379,362,269,243,186,161,195,176)
LeBronJames_FTA <- c(814,701,771,762,773,663,502,535,585,528)
CarmeloAnthony_FTA <- c(709,568,590,468,612,605,367,512,541,237)
DwightHoward_FTA <- c(598,666,897,849,816,916,572,721,638,271)
ChrisBosh_FTA <- c(581,590,559,617,590,471,279,302,272,232)
ChrisPaul_FTA <- c(465,357,390,524,190,384,302,323,345,321)
KevinDurant_FTA <- c(256,256,448,524,840,675,501,750,805,171)
DerrickRose_FTA <- c(205,205,205,250,338,555,239,0,32,187)
DwayneWade_FTA <- c(803,535,467,771,702,652,297,425,258,370)

#Matrix
# *** You have been provided data for two additional in-game stats:
#**Free shots
# Link the given vectors to form the matrix
FreeThrows  <-  rbind(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
#Delete vectors: we don't need them anymore
rm( KobeBryant_FT, JoeJohnson_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, LeBronJames_FT, ChrisPaul_FT, DerrickRose_FT, DwayneWade_FT, KevinDurant_FT)
# Rename the columns
colnames(FreeThrows) <-  Seasons
# Rename the rows
rownames(FreeThrows) <-  Players

#Check the matrix
FreeThrows


# * Free throw attempts
# Matrix for free kick attempts
# Link the given vectors to form the matrix
FreeThrowAttempts  <-  rbind(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA , DwightHoward_FTA , ChrisBosh_FTA , ChrisPaul_FTA , KevinDurant_FTA , DerrickRose_FTA , DwayneWade_FTA )
# Delete vectors: we don't need them anymore
rm( KobeBryant_FTA , JoeJohnson_FTA , CarmeloAnthony_FTA , DwightHoward_FTA , ChrisBosh_FTA , LeBronJames_FTA , ChrisPaul_FTA , DerrickRose_FTA , DwayneWade_FTA , KevinDurant_FTA )
    
# Rename the columns
colnames (FreeThrowAttempts) <- Seasons
# Rename the rows
rownames (FreeThrowAttempts) <- Players
# Check the matrix
FreeThrowAttempts


# You must create three paths that show the following ideas:
# View the new matrices
    
FreeThrows
rownames(FreeThrows)
colnames(FreeThrows)

FreeThrowAttempts
rownames(FreeThrowAttempts)
colnames(FreeThrowAttempts)
 
- Free launch attempts per game
- Part 1 - Free Launch Attempts Per Game
- (You will need the Games matrix)
#Games 
KobeBryant_G <- c(80,77,82,82,73,82,58,78,6,35)
JoeJohnson_G <- c(82,57,82,79,76,72,60,72,79,80)
LeBronJames_G <- c(79,78,75,81,76,79,62,76,77,69)
CarmeloAnthony_G <- c(80,65,77,66,69,77,55,67,77,40)
DwightHoward_G <- c(82,82,82,79,82,78,54,76,71,41)
ChrisBosh_G <- c(70,69,67,77,70,77,57,74,79,44)
ChrisPaul_G <- c(78,64,80,78,45,80,60,70,62,82)
KevinDurant_G <- c(35,35,80,74,82,78,66,81,81,27)
DerrickRose_G <- c(40,40,40,81,78,81,39,0,10,51)
DwayneWade_G <- c(75,51,51,79,77,76,49,69,54,62)
    
#Matrix
Games <- rbind(KobeBryant_G, JoeJohnson_G, LeBronJames_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, ChrisPaul_G, KevinDurant_G, DerrickRose_G, DwayneWade_G)
rm(KobeBryant_G, JoeJohnson_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, LeBronJames_G, ChrisPaul_G, DerrickRose_G, DwayneWade_G, KevinDurant_G)
      
colnames(Games) <- Seasons
rownames(Games) <- Players
myplot(FreeThrowAttempts / Games)

# Notice how Chris Paul gets few tries per game
# Re-create the plot function
                   
myplot <- function(z, who=1:10) {
  matplot(t(z[who,,drop=F]), type="b", pch=15:18, col=c(1:4,6), main="Basketball Players Analysis")
  legend("bottomleft", inset=0.01, legend=Players[who], col=c(1:4,6), pch=15:18, horiz=F)
}
```
#### 
- Free throw accuracy
- Part 2 - Free Kick Accuracy myplot (FieldGoalAttempts / Games)
-And yet Chris Paul's accuracy is one of the highest
- Your team is likely to get more points if it had more TLC
- Also note that Dwight Howard's FT accuracy is extremely poor
- compared to other players. If you remember, Dwight Howard's
- The accuracy of the field objective was exceptional:
- myplot (FieldGoals / FieldGoalAttempts)
- How can this be? Why is there such a drastic difference?
- We will see now ...

- Player style of play (2 vs. 3 point preference) excluding free throws
- Part 3 - Player style patterns excluding free throws
myplot ((FieldGoalAttempts - FreeThrows) / Games)
- Because we have excluded free kicks, this plot now shows us
- the true representation of the player's change in style. We can verify
- that this is the case because all brands without exception
- in this graph are between 2 and 3. This is due to field goals
- can only be for 2 points or for 3 points.
- Insights:
- 1. You can see how players prefer 2 or 3 point shots
- changes throughout your career. We can see that almost all
- players in this dataset who experiment with their style throughout
- their careers. Perhaps the most drastic change in style has
- experienced by Joe Johnson.
- 2. There is an exception. You can see that a player does not have
- change his style, he almost always scores only 2 points.
- Who is this mystert player? It's Dwight Howard!
- Now that explains a lot. The reason why Dwight Howard's
- The accuracy of the field target is so good because almost always
- scores only 2 points. That means it may be close to the basket
- or even contact him. Free kicks, on the other hand affected
- the player must be 15 feet (4.57m) from the ring. That's
- probably why Dwight Howard's free kick accuracy is poor.
- Each free throw is worth 1 point
- The data has been supplied in vector form. You will have to create
- two matrices before proceeding with the analysis.

### Fifth-Practice
```
#Filter countries by Low income
stats[stats$Income.Group=="Low income",]

#Filter countries by Lower middle income
stats[stats$Income.Group=="Lower middle income",]

#Filter countries by Upper middle income
stats[stats$Income.Group=="Upper middle income",]

#Filter by countrie Malta
stats[stats$Country.Name=="Malta",]

#Filter by countrie Qatar
stats[stats$Country.Name== "Qatar",]

#Filter by countrie Netherlands
stats[stats$Country.Name== "Netherlands",]

#Filter by countrie Norway
stats[stats$Country.Name== "Norway",]
```


## Examen U1

### The file is loaded Test-Data.CSV
```
setwd('/home/davidmtz/Escritorio/JCROMERO/DataMining/Datasets')
rm(stats)
stats <- read.csv("Test-Data.csv")

stats

head(stats)
tail(stats)

```

### Addtional vectors
```
Country_Code <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","WSM","YEM","ZAF","COD","ZMB","ZWE")
Life_Expectancy_At_Birth_1960 <- c(65.5693658536586,32.328512195122,32.9848292682927,62.2543658536585,52.2432195121951,65.2155365853659,65.8634634146342,61.7827317073171,70.8170731707317,68.5856097560976,60.836243902439,41.2360487804878,69.7019512195122,37.2782682926829,34.4779024390244,45.8293170731707,69.2475609756098,52.0893658536585,62.7290487804878,60.2762195121951,67.7080975609756,59.9613658536585,42.1183170731707,54.2054634146342,60.7380487804878,62.5003658536585,32.3593658536585,50.5477317073171,36.4826341463415,71.1331707317073,71.3134146341463,57.4582926829268,43.4658048780488,36.8724146341463,41.523756097561,48.5816341463415,56.716756097561,41.4424390243903,48.8564146341463,60.5761951219512,63.9046585365854,69.5939268292683,70.3487804878049,69.3129512195122,44.0212682926829,72.1765853658537,51.8452682926829,46.1351219512195,53.215,48.0137073170732,37.3629024390244,69.1092682926829,67.9059756097561,38.4057073170732,68.819756097561,55.9584878048781,69.8682926829268,57.5865853658537,39.5701219512195,71.1268292682927,63.4318536585366,45.8314634146342,34.8863902439024,32.0422195121951,37.8404390243902,36.7330487804878,68.1639024390244,59.8159268292683,45.5316341463415,61.2263414634146,60.2787317073171,66.9997073170732,46.2883170731707,64.6086585365854,42.1000975609756,68.0031707317073,48.6403170731707,41.1719512195122,69.691756097561,44.945512195122,48.0306829268293,73.4286585365854,69.1239024390244,64.1918292682927,52.6852682926829,67.6660975609756,58.3675853658537,46.3624146341463,56.1280731707317,41.2320243902439,49.2159756097561,53.0013170731707,60.3479512195122,43.2044634146342,63.2801219512195,34.7831707317073,42.6411951219512,57.303756097561,59.7471463414634,46.5107073170732,69.8473170731707,68.4463902439024,69.7868292682927,64.6609268292683,48.4466341463415,61.8127804878049,39.9746829268293,37.2686341463415,57.0656341463415,60.6228048780488,28.2116097560976,67.6017804878049,42.7363902439024,63.7056097560976,48.3688048780488,35.0037073170732,43.4830975609756,58.7452195121951,37.7736341463415,59.4753414634146,46.8803902439024,58.6390243902439,35.5150487804878,37.1829512195122,46.9988292682927,73.3926829268293,73.549756097561,35.1708292682927,71.2365853658537,42.6670731707317,45.2904634146342,60.8817073170732,47.6915853658537,57.8119268292683,38.462243902439,67.6804878048781,68.7196097560976,62.8089268292683,63.7937073170732,56.3570487804878,61.2060731707317,65.6424390243903,66.0552926829268,42.2492926829268,45.6662682926829,48.1876341463415,38.206,65.6598292682927,49.3817073170732,30.3315365853659,49.9479268292683,36.9658780487805,31.6767073170732,50.4513658536585,59.6801219512195,69.9759268292683,68.9780487804878,73.0056097560976,44.2337804878049,52.768243902439,38.0161219512195,40.2728292682927,54.6993170731707,56.1535365853659,54.4586829268293,33.7271219512195,61.3645365853659,62.6575853658537,42.009756097561,45.3844146341463,43.6538780487805,43.9835609756098,68.2995365853659,67.8963902439025,69.7707317073171,58.8855365853659,57.7238780487805,59.2851219512195,63.7302195121951,59.0670243902439,46.4874878048781,49.969512195122,34.3638048780488,49.0362926829268,41.0180487804878,45.1098048780488,51.5424634146342)
Life_Expectancy_At_Birth_2013 <- c(75.3286585365854,60.0282682926829,51.8661707317073,77.537243902439,77.1956341463415,75.9860975609756,74.5613658536585,75.7786585365854,82.1975609756098,80.890243902439,70.6931463414634,56.2516097560976,80.3853658536585,59.3120243902439,58.2406341463415,71.245243902439,74.4658536585366,76.5459512195122,75.0735365853659,76.2769268292683,72.4707317073171,69.9820487804878,67.9134390243903,74.1224390243903,75.3339512195122,78.5466585365854,69.1029268292683,64.3608048780488,49.8798780487805,81.4011219512195,82.7487804878049,81.1979268292683,75.3530243902439,51.2084634146342,55.0418048780488,61.6663902439024,73.8097317073171,62.9321707317073,72.9723658536585,79.2252195121951,79.2563902439025,79.9497804878049,78.2780487804878,81.0439024390244,61.6864634146342,80.3024390243903,73.3199024390244,74.5689512195122,75.648512195122,70.9257804878049,63.1778780487805,82.4268292682927,76.4243902439025,63.4421951219512,80.8317073170732,69.9179268292683,81.9682926829268,68.9733902439024,63.8435853658537,80.9560975609756,74.079512195122,61.1420731707317,58.216487804878,59.9992682926829,54.8384146341464,57.2908292682927,80.6341463414634,73.1935609756098,71.4863902439024,78.872512195122,66.3100243902439,83.8317073170732,72.9428536585366,77.1268292682927,62.4011463414634,75.2682926829268,68.7046097560976,67.6604146341463,81.0439024390244,75.1259756097561,69.4716829268293,83.1170731707317,82.290243902439,73.4689268292683,73.9014146341463,83.3319512195122,70.45,60.9537804878049,70.2024390243902,67.7720487804878,65.7665853658537,81.459756097561,74.462756097561,65.687243902439,80.1288780487805,60.5203902439024,71.6576829268293,74.9127073170732,74.2402926829268,49.3314634146342,74.1634146341464,81.7975609756098,73.9804878048781,80.3391463414634,73.7090487804878,68.811512195122,64.6739024390244,76.6026097560976,76.5326585365854,75.1870487804878,57.5351951219512,80.7463414634146,65.6540975609756,74.7583658536585,69.0618048780488,54.641512195122,62.8027073170732,74.46,61.466,74.567512195122,64.3438780487805,77.1219512195122,60.8281463414634,52.4421463414634,74.514756097561,81.1048780487805,81.4512195121951,69.222,81.4073170731707,76.8410487804878,65.9636829268293,77.4192195121951,74.2838536585366,68.1315609756097,62.4491707317073,76.8487804878049,78.7111951219512,80.3731707317073,72.7991707317073,76.3340731707317,78.4184878048781,74.4634146341463,71.0731707317073,63.3948292682927,74.1776341463415,63.1670487804878,65.878756097561,82.3463414634146,67.7189268292683,50.3631219512195,72.4981463414634,55.0230243902439,55.2209024390244,66.259512195122,70.99,76.2609756097561,80.2780487804878,81.7048780487805,48.9379268292683,74.7157804878049,51.1914878048781,59.1323658536585,74.2469268292683,69.4001707317073,65.4565609756098,67.5223658536585,72.6403414634147,70.3052926829268,73.6463414634147,75.1759512195122,64.2918292682927,57.7676829268293,71.159512195122,76.8361951219512,78.8414634146341,68.2275853658537,72.8108780487805,74.0744146341464,79.6243902439024,75.756487804878,71.669243902439,73.2503902439024,63.583512195122,56.7365853658537,58.2719268292683,59.2373658536585,55.633)
```

### The mydf dataframe is created and the columns are related
```
mydf <- data.frame(Country = Country_Code, LEAB1960 = Life_Expectancy_At_Birth_1960,
                   LEAB2013 = Life_Expectancy_At_Birth_2013)
head(mydf)
tail(mydf)
summary(mydf)
```

### Marging Data Frames
```
head(stats)
head(mydf)
merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Country")
head(merged)
```

```
### The library is imported
library(ggplot2)
```
### Life_Expectancy_At_Birth_1960 by Country  (BY COUNTRY CODE)
```
qplot(data = merged, x = Fertility.Rate, y = LEAB1960,
      color = Country.Code, size=I(3), shape=I(19), alpha =I(.4), 
      main = "LEAB1960 vs Fertility.Rate by Country Code")
```

#### Life_Expectancy_At_Birth_1960 by Country  (BY REGION)
```
qplot(data = merged, x = Fertility.Rate, y = LEAB1960,
      color = Region, size=I(3), shape=I(19), alpha =I(.4), 
      main = "LEAB1960 vs Fertility.Rate by Region")
```


#### Life_Expectancy_At_Birth_2013 (BY COUNTRY CODE)
```
qplot(data = merged, x = Fertility.Rate, y = LEAB2013,
      color = Country.Code, size=I(3), shape=I(19), alpha =I(.4), 
      main = "LEAB2013 vs Fertility.Rate by Country Code")
      
```

#### Life_Expectancy_At_Birth_2013 (BY REGION)
```
qplot(data = merged, x = Fertility.Rate, y = LEAB2013,
      color = Region, size=I(3), shape=I(19), alpha =I(.4), 
      main = "LEAB2013 vs Fertility.Rate by Region")
```

## Analysis

-In 2013 Europe Europe has some of the best fertility-life rates

-Africa has the shortest life expectancy

-Africa fertility rate increased in 2013


      
      

