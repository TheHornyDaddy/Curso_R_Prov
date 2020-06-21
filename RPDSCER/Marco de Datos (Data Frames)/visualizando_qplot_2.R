# Visualizando con qplot 2:

library(ggplot2)

# Ejemplo 1:
qplot(data=dataframe_combinado , x=Penetracion.Internet ,
      y=Tasa.Natalidad , color=Region,
      size=I(4))

# Ejemplo 2:
qplot(data=dataframe_combinado , 
      x=Penetracion.Internet , y=Tasa.Natalidad , color=Region,
      size=I(4),
      shape=I(17))

# Ejemplo 3: Nos da una ventaja para ver conglomeraciones
qplot(data=dataframe_combinado , 
      x=Penetracion.Internet , y=Tasa.Natalidad , color=Region,
      size=I(4),
      shape=I(23))


# Ejemplo 4:
qplot(data=dataframe_combinado , 
      x=Penetracion.Internet , y=Tasa.Natalidad , color=Region,
      size=I(4),
      shape=I(19))

# Ejemplo 5:
qplot(data=dataframe_combinado , 
      x=Penetracion.Internet , y=Tasa.Natalidad , color=Region,
      size=I(4),
      shape=I(19),
      alpha=I(0.5))

# Ejemplo 6;
qplot(data=dataframe_combinado , 
      x=Penetracion.Internet , y=Tasa.Natalidad , color=Region,
      size=I(4),
      shape=I(19),
      alpha=I(0.5),
      main="Tasa de Natalidad vs Penetración de Internet")
