# Graficando con Capas:
p <- ggplot(data=peliculas , aes(x=RatingCriticos , y=RatingAudiencia ,
                                 color=Género , size=PresupuestoMillones))
p

# Capa de puntos:
p + geom_point()

# Capara de líneas:
p + geom_line()

# Múltiples capas 1:
p + geom_point() + geom_line()

# Múltiples capas 2:
p + geom_line() + geom_point()