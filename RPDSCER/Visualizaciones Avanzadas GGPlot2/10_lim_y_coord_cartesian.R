# Coordenadas:
m <- ggplot(data=peliculas , aes(x=RatingCriticos , y=RatingAudiencia ,
                                 color=Género))

m + geom_point() +
  xlim(50,100) +
  ylim(50,100)

# Consideraciones:
n <- ggplot(data=peliculas , aes(x=PresupuestoMillones))
n + geom_histogram(binwidth=10 , aes(fill=Género) ,
                   color="Black")

n + geom_histogram(binwidth=10 , aes(fill=Género) ,
                   color="Black") +
  ylim(0,50)
# Notemos que las barras que se salen de los límites no se muestran.

# Correción con coord_cartesian
n + geom_histogram(binwidth=10 , aes(fill=Género) ,
                   color="Black") +
  coord_cartesian(ylim=c(0,50))

# Diagramas de Dispersión:
w <- ggplot(data=peliculas , aes(x=RatingCriticos , y=RatingAudiencia ,
                                 color=Género))
w + geom_point(size=3)

# Facetas:
w + geom_point(size=3) +
  facet_grid(.~Año)

w + geom_point(aes(size=PresupuestoMillones)) +
  geom_smooth() +
  facet_grid(Género~Año)

w + geom_point(aes(size=PresupuestoMillones)) +
  geom_smooth() +
  facet_grid(Género~Año) +
  coord_cartesian(ylim=c(0,100))