# Sobre-escribiendo Estéticas:
q <- ggplot(data=peliculas , aes(x=RatingCriticos , y=RatingAudiencia,
                                 color=Género , size=PresupuestoMillones))

# Agregando geom_point():
q + geom_point()


# Sobre-escribir las estéticas
# Ejemplo 1:
q + geom_point(aes(size=RatingCriticos))
# Se aprecia cómo incrementa el tamaño proporcionalmente
# al rating de los críticos

# Ejemplo 2:
q + geom_point(aes(color=PresupuestoMillones))

# Ejemplo 3:
q + geom_point(aes(x=PresupuestoMillones))

q + geom_point(aes(x=PresupuestoMillones)) + 
  xlab("Presupuesto Millones")

# Ejemplo 4:
q + geom_line() + geom_point()
# Reducir el tamaño de las líneas:
q + geom_line(size=1) + geom_point()