# Visualizando la solicitud
datos <- read.csv("DatosDemograficos.csv")

# Partamos
qplot(data=datos , x=Penetracion.Internet , y=Tasa.Natalidad)
qplot(data=datos , x=Penetracion.Internet , y=Tasa.Natalidad , size=I(5))
qplot(data=datos , x=Penetracion.Internet , y=Tasa.Natalidad , size=I(5) , color=Grupo.Ingresos)
# Notemos que entre mayor dea la penetración de Internet,
# menor es la tasa de natalidad.