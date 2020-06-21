# importar archivos
?read.csv()

# Método #1: Seleccionar el archivo manualmente
datos <- read.csv(file.choose())
datos

rm(datos)

# Método #2: Establecer el Directorio de Trabajo (Working Directory)
getwd() # Veamos primero el Working Directory (WD)
setwd() # Establece el WD pero es diferente de Mac a Windows

# Windows:
setwd("C:\\Git\\R_para_Data_Science_con_Ejercicios_Reales\\Marco de Datos (Data Frames)")

# Mac:
# setwd("/users/Git/R_para_Data_Science_con_Ejercicios_Reales\Marco de Datos (Data Frames)")

datos <- read.csv("DatosDemograficos.csv")
datos