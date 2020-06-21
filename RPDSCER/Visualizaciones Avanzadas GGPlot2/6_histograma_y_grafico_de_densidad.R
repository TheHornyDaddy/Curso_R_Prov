# Histogramas y Gráficos de Densidad:

s <- ggplot(data=peliculas , aes(x=PresupuestoMillones))
s + geom_histogram(binwidth = 10)

# Agregando color:
s + geom_histogram(binwidth=10 , fill="Green")
s + geom_histogram(binwidth=10 , aes(fill=Género))

# Agregando borde:
s + geom_histogram(binwidth=10 , aes(fill=Género) ,
                   color="Black")


# Gráfico de Densidad:
s + geom_density()
s + geom_density(aes(fill=Género))
s + geom_density(aes(fill=Género) , position="stack")