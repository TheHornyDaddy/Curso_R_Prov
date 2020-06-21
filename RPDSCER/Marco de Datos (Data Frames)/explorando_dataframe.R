# Explorando datos
datos <- read.csv("DatosDemograficos.csv")
datos

# Número de filas del dataframe:
nrow(datos) # 195

# Número de columnas del dataframe:
ncol(datos) # 5

# Ver las priemras 6 filas
head(datos)
#                Nombre.Pais Codigo.Pais Tasa.Natalidad
# 1                Aruba         ABW         10.244
# 2          Afghanistan         AFG         35.253
# 3               Angola         AGO         45.985
# 4              Albania         ALB         12.877
# 5 United Arab Emirates         ARE         11.044
# 6            Argentina         ARG         17.716

#    Penetracion.Internet     Grupo.Ingresos
# 1                 78.9       Ingreso alto
# 2                  5.9       Ingreso bajo
# 3                 19.1 Ingreso medio alto
# 4                 57.2 Ingreso medio alto
# 5                 88.0       Ingreso alto
# 6                 59.9       Ingreso alto


# Ver las últimas 6 filas
tail(datos)
#          Nombre.Pais Codigo.Pais Tasa.Natalidad
# 190      Vanuatu         VUT         26.739
# 191        Samoa         WSM         26.172
# 192  Yemen, Rep.         YEM         32.947
# 193 South Africa         ZAF         20.850
# 194       Zambia         ZMB         40.471
# 195     Zimbabwe         ZWE         35.715

#     Penetracion.Internet     Grupo.Ingresos
# 190                 11.3 Ingreso medio bajo
# 191                 15.3 Ingreso medio bajo
# 192                 20.0 Ingreso medio bajo
# 193                 46.5 Ingreso medio alto
# 194                 15.4 Ingreso medio bajo
# 195                 18.5       Ingreso bajo

# Para un número específico de filas
head(datos , n=10)
tail(datos , n=2)

# Ver estructura o desglose del dataframe:
str(datos)
     
# Resúmen descriptivo del dataframe:
summary(datos)
