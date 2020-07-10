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
#Matrix
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
#***Se te han proporcionado datos para otras dos estadísticas adicionales en el juego:
#**Tiros libres
# Vincula los vectores dados para formar la matriz
FreeThrows  <-  rbind(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
# Eliminar vectores: ya no los necesitamos
rm( KobeBryant_FT, JoeJohnson_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, LeBronJames_FT, ChrisPaul_FT, DerrickRose_FT, DwayneWade_FT, KevinDurant_FT)
# Cambiar el nombre de las columnas
colnames(FreeThrows) <-  Seasons
# Cambiar el nombre de las filas
rownames(FreeThrows) <-  Players

#Check the matrix
FreeThrows

#* Intentos de tiros libres
# Matriz para intentos de tiro libre
# Vincula los vectores dados para formar la matriz
FreeThrowAttempts  <-  rbind(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA , DwightHoward_FTA , ChrisBosh_FTA , ChrisPaul_FTA , KevinDurant_FTA , DerrickRose_FTA , DwayneWade_FTA )
# Eliminar vectores: ya no los necesitamos
rm( KobeBryant_FTA , JoeJohnson_FTA , CarmeloAnthony_FTA , DwightHoward_FTA , ChrisBosh_FTA , LeBronJames_FTA , ChrisPaul_FTA , DerrickRose_FTA , DwayneWade_FTA , KevinDurant_FTA )
# Cambiar el nombre de las columnas
colnames (FreeThrowAttempts) <- Seasons

# Cambiar el nombre de las filas
rownames (FreeThrowAttempts) <- Players
# Verifique la matriz
FreeThrowAttempts

#Debe crear tres trazados que muestren las siguientes ideas:
# Visualiza las nuevas matrices
FreeThrows
rownames(FreeThrows)
colnames(FreeThrows)

FreeThrowAttempts
rownames(FreeThrowAttempts)
colnames(FreeThrowAttempts)


#* Intentos de lanzamiento gratis por juego
# Parte 1 - Intentos de lanzamiento gratis por juego
# (Necesitará la matriz de Juegos)
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
# Observe cómo Chris Paul consigue pocos intentos por juego

# Volver a crear la función de trazado
myplot <- function(z, who=1:10) {
  matplot(t(z[who,,drop=F]), type="b", pch=15:18, col=c(1:4,6), main="Basketball Players Analysis")
  legend("bottomleft", inset=0.01, legend=Players[who], col=c(1:4,6), pch=15:18, horiz=F)
}
#* Precisión de tiros libres
# Parte 2 - Precisión de tiro libre
myplot ( FieldGoalAttempts / Games )
# Y sin embargo, la precisión de Chris Paul es una de las más altas
# Lo más probable es que su equipo obtenga más puntos si tuviera más TLC
# Observe también que la precisión FT de Dwight Howard es extremadamente pobre
# comparado con otros jugadores. Si recuerdas, Dwight Howard's
# La precisión del objetivo de campo fue excepcional:
#myplot ( FieldGoals / FieldGoalAttempts )
# ¿Cómo puede ser esto? ¿Por qué hay una diferencia tan drástica?
# Veremos ahora ...

#* Estilo de juego del jugador (preferencia de 2 vs 3 puntos) excluyendo tiros libres
# Parte 3 - Patrones de estilo de jugador excluyendo tiros libres
myplot (( FieldGoalAttempts  - FreeThrows  ) / Games )
# Debido a que hemos excluido los tiros libres, esta trama ahora nos muestra
# la verdadera representación del cambio de estilo del jugador. Podemos verificar
# que este es el caso porque todas las marcas sin excepción
# en esta parcela son entre 2 y 3. Eso se debe a los objetivos de campo
# solo puede ser por 2 puntos o por 3 puntos.
# Insights:
# 1. Puedes ver cómo prefieren los jugadores los tiros de 2 o 3 puntos
#    cambios a lo largo de su carrera. Podemos ver que casi todos
#    jugadores en este conjunto de datos experimentan con su estilo a lo largo
#    sus carreras. Quizás, el cambio más drástico en el estilo tiene
#    experimentado por Joe Johnson.
# 2. Hay una excepción. Puedes ver que un jugador no tiene
#    cambió su estilo en absoluto, casi siempre anotando solo 2 puntos.
#    ¿Quién es este jugador mystert? ¡Es Dwight Howard!
#    Ahora eso explica mucho. La razón por la que Dwight Howard's
#    La precisión del objetivo de campo es tan buena porque casi siempre
#    puntúa solo 2 puntos. Eso significa que puede estar cerca de la canasta
#    o incluso en contacto con él. Los tiros libres, por otro lado requieren
#    el jugador para estar a 15 pies (4.57m) de distancia del aro. Eso es
#    probablemente por qué la precisión de tiro libre de Dwight Howard es pobre.
#Cada tiro libre vale 1 punto
#Los datos han sido suministrados en forma de vectores. Tendrás que crear
#dos matrices antes de proceder con el análisis.
