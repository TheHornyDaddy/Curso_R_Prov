# Graficando datos con qplot:
datos <- read.csv("DatosDemograficos.csv")
datos

?qplot # No podemos ver el help porque no se ha isntalado
# el paquete
# install.package(ggplot2)
library(ggplot2)

# Ejemplo 1:
qplot(data=datos , x=Penetracion.Internet)
qplot(data = datos , x = Grupo.Ingresos)

# DD_GI_cat_TN_1:
qplot(data = datos , x = Grupo.Ingresos  , y = Tasa.Natalidad)

# DD_GI_cat_TN_2:
qplot(data = datos , x = Grupo.Ingresos  , y = Tasa.Natalidad , size = 10)

# DD_GI_cat_TN_3:
qplot(data = datos , x = Grupo.Ingresos  , y = Tasa.Natalidad , size = I(10))

# DD_GI_cat_TN_4:
qplot(data = datos , x = Grupo.Ingresos  , y = Tasa.Natalidad , size = I(3), color = "blue")

# DD_GI_cat_TN_5:
qplot(data = datos , x = Grupo.Ingresos  , y = Tasa.Natalidad , size = I(3), color = I("blue"))

# DD_GI_cat_TN_6:
qplot(data = datos , x = Grupo.Ingresos  , y = Tasa.Natalidad , geom = "boxplot")
