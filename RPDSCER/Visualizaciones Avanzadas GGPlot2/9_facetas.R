# Usando Facetas
v <- ggplot(data=peliculas , aes(x=PresupuestoMillones))
v + geom_histogram(binwidth=10 , aes(fill=Género) , 
                   color="Black")

# Facetas:
v + geom_histogram(binwidth=10 , aes(fill=Género) , 
                   color="Black") + 
  facet_grid(Género~.)

v + geom_histogram(binwidth=10 , aes(fill=Género) , 
                   color="Black") + 
  facet_grid(Género~. , scale="free")


# Diagramas de Dispersión:
w <- ggplot(data=peliculas , aes(x=RatingCriticos ,  y=RatingAudiencia ,
                                 color=Género))
w + geom_point(size=3)

# Facetas:
w + geom_point(size=3) +
  facet_grid(.~Año)
w + geom_point(size=3) +
  facet_grid(Género~Año)

w + geom_point(size=3) +
  geom_smooth() +
  facet_grid(Género~Año)