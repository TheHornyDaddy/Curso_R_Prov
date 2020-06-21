# Uniendo data frames:
datos <- read.csv("DatosDemograficos.csv")

setwd("C:\\Git\\R_para_Data_Science_con_Ejercicios_Reales\\Marco de Datos (Data Frames)")

# Lo data frames ya fueron cargados previamente.
head(datos)
#            Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos
# 1                Aruba         ABW         10.244                 78.9       Ingreso alto
# 2          Afghanistan         AFG         35.253                  5.9       Ingreso bajo
# 3               Angola         AGO         45.985                 19.1 Ingreso medio alto
# 4              Albania         ALB         12.877                 57.2 Ingreso medio alto
# 5 United Arab Emirates         ARE         11.044                 88.0       Ingreso alto
# 6            Argentina         ARG         17.716                 59.9       Ingreso alto

head(mi_dataframe)
#                   Pais Codigo       Region
# 1                Aruba    ABW The Americas
# 2          Afghanistan    AFG         Asia
# 3               Angola    AGO       Africa
# 4              Albania    ALB       Europe
# 5 United Arab Emirates    ARE  Middle East
# 6            Argentina    ARG The Americas

# Veamos que tanto el Código del Pais como el Nombre del Pais aparecen en ambos data frames, 
# escojamos una de esas columnas para combinar nuestros data frames.

dataframe_combinado <- merge(datos , mi_dataframe,
                             by.x="Codigo.Pais" , by.y="Codigo")
head(dataframe_combinado)
#   Codigo.Pais          Nombre.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos                 Pais       Region
# 1         ABW                Aruba         10.244                 78.9       Ingreso alto                Aruba The Americas
# 2         AFG          Afghanistan         35.253                  5.9       Ingreso bajo          Afghanistan         Asia
# 3         AGO               Angola         45.985                 19.1 Ingreso medio alto               Angola       Africa
# 4         ALB              Albania         12.877                 57.2 Ingreso medio alto              Albania       Europe
# 5         ARE United Arab Emirates         11.044                 88.0       Ingreso alto United Arab Emirates  Middle East
# 6         ARG            Argentina         17.716                 59.9       Ingreso alto            Argentina The Americas

# Quitemos la otra columna repetida: Nombre del Pais
dataframe_combinado$Pais <- NULL
head(dataframe_combinado)
#   Codigo.Pais          Nombre.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos       Region
# 1         ABW                Aruba         10.244                 78.9       Ingreso alto The Americas
# 2         AFG          Afghanistan         35.253                  5.9       Ingreso bajo         Asia
# 3         AGO               Angola         45.985                 19.1 Ingreso medio alto       Africa
# 4         ALB              Albania         12.877                 57.2 Ingreso medio alto       Europe
# 5         ARE United Arab Emirates         11.044                 88.0       Ingreso alto  Middle East
# 6         ARG            Argentina         17.716                 59.9       Ingreso alto The Americas