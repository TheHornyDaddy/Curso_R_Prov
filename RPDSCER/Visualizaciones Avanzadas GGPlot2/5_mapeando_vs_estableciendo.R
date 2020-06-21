# Mapearvs Establecer

r <- ggplot(data=peliculas , aes(x=RatingCriticos , y=RatingAudiencia))
r + geom_point()

# 1: Mapenado (lo que ya hemos hecho):
r + geom_point(aes(color=Género))
r + geom_point(aes(size=PresupuestoMillones))

# 2: Estableciendo:
r + geom_point(color="DarkGreen")
r + geom_point(size=10)

# Error:
r + geom_point(aes(color="DarkGreen"))
r + geom_point(aes(size=10))
