# Tips Para Capa Inicial:
t1 <- ggplot(data=peliculas , aes(x=RatingAudiencia))
t1 + geom_histogram(binwidth=10 , fill="White" ,
                   color="Blue")

# Otra manera (sin especificar estéticas para t:
t2 <- ggplot(data = peliculas)

t2 + geom_histogram(aes(x=RatingAudiencia),
                   binwidth=10 , fill="White" ,
                   color="Blue")

# Gráfico de entregable:
t3 <- ggplot(data = peliculas)
t3 + geom_histogram(aes(x=RatingCriticos),
                    binwidth=10 , fill="White" ,
                    color="Blue")

# Skeleton plot:
t4 <- ggplot()
t4