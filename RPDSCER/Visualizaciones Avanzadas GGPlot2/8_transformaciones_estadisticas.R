# Transformaciones Estadísticas:
?geom_smooth
# Aids the eye in seeing patterns in the presence of overplotting.

u1 <- ggplot(data=peliculas , aes(x=RatingCriticos , y=RatingAudiencia ,
                                  color=Género))
u1

# Smooth:
u1 + geom_point() + geom_smooth()
u1 + geom_point() + geom_smooth(fill=NA)

# Boxplot:
u2 <- ggplot(data=peliculas , aes(x=Género , y=RatingAudiencia ,
             color=Género))
u2 + geom_boxplot(size=1.2)
u2 + geom_boxplot(size=1.2) + geom_point()

#Tip: Puntos distribuídos de manera aleatoria
u2 + geom_boxplot(size=1.2) + geom_jitter()
u2 + geom_jitter() + geom_boxplot(size=1.2 , alpha=0.5)