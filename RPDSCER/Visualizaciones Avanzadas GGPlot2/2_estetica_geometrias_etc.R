# Estética

library(ggplot2)
ggplot(data=peliculas , aes(x=RatingCriticos , y=RatingAudiencia))


# Geomtería:
ggplot(data=peliculas , aes(x=RatingCriticos , y=RatingAudiencia)) +
  geom_point()

# Agregando color:
ggplot(data=peliculas , aes(x=RatingCriticos , y=RatingAudiencia ,
                            color=Género)) +
    geom_point() 

# Agregando tamaño:
ggplot(data=peliculas , aes(x=RatingCriticos , y=RatingAudiencia ,
                            color=Género , size=PresupuestoMillones)) +
  geom_point() 
# Se escogió PresupuestoMillones para determinar el tamaño por ser
# una variable contínua.