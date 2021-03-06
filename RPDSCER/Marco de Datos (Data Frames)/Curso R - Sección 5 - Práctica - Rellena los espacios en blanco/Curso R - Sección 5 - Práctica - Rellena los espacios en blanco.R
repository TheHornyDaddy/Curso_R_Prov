#Establece el Directorio de Trabajo
getwd()
setwd("C:\\Git\\R_para_Data_Science_con_Ejercicios_Reales\\Marco de Datos (Data Frames)\\Curso R - Sección 5 - Práctica - Datos")
getwd()

#Importa los datos en el archivo csv
datos <- read.csv("Sección 5 - Práctica.csv")

#Explora los datos
datos
head(datos)      #crevisa las 6 filas superiores
tail(datos, n=7) #revisa la últimas 7 filas
str(datos)      #revisa la estructura del marco de datos
summary(datos)      #revisa el resumen de los datos

#?Te diste cuenta que hay m?s de un año en los datos?
#De la descripción del reto sabemos que hay dos: 1960 y 2013

#Filtra el marco de datos
datos1960 <- datos[datos$Año==1960,]
head(datos1960)
datos2013 <- datos[datos$Año==2013,]
head(datos2013)

#Revisa el número de filas
nrow(datos1960) #187 filas
nrow(datos2013) #187 filas. Misma cantidad

#Crea los marcos de datos adicionales
adicional1960 <- data.frame(Codigo=codigo_pais, Expectativa.Vida=expectativa_vida_al_nacer_1960)
adicional2013 <- data.frame(Codigo=codigo_pais, Expectativa.Vida=expectativa_vida_al_nacer_2013)

#Revisa los res?menes
summary(adicional1960)
summary(adicional2013)

#Combina el par de Marcos de Datos
combinado1960 <- merge(datos1960, adicional1960, by.x="Código.País", by.y="Codigo")
combinado2013 <- merge(datos2013, adicional2013, by.x="Código.País", by.y="Codigo")

#Revisa las nuevas estructuras
str(combinado1960)
str(combinado2013)

#Podemos ver una columna obsoleta en cada uno de los marcos de datos combinados
#La columna "Año" ya no es requerida. Quitémosla
combinado1960$Año <- NULL
combinado2013$Año <- NULL

#Revisa las estructuras de nuevo
str(combinado1960)
str(combinado2013)

#Hora de la visualizaci?n
library(ggplot2)

#Visualiza el set de datos de 1960
qplot(data=combinado1960, x=Tasa.Fertilidad, y=Expectativa.Vida,
      color=Región,                                              #color
      size=I(5), 
      alpha=I(0.6),                                              #transparencia
      main="Expectativa de Vida vs Tasa de Fertilidad (1960)"    #título
   )

#visualiza el set de datos de 2013
qplot(data=combinado2013, x=Tasa.Fertilidad, y=Expectativa.Vida,
      color=Región,                                              #color
      size=I(5), 
      alpha=I(0.6),                                              #transparencia
      main="Expectativa de Vida vs Tasa de Fertilidad (2013)"    #título
)