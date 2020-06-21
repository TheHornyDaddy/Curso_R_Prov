# Temas:
g <- ggplot(data=peliculas , aes(x=PresupuestoMillones))
h <- g + geom_histogram(binwidht=10 , aes(fill=Género) ,
                        color="Black")
h

# Etiquetas de los ejes:
h + 
  xlab("Presupuesto") +
  ylab("Número de Películas")

# Formato de las etiquetas:
h + 
  xlab("Presupuesto") +
  ylab("Número de Películas") +
  theme(
    axis.title.x=element_text(color="DarkGreen" , size=20))

h + 
  xlab("Presupuesto") +
  ylab("Número de Películas") +
  theme(
    axis.title.x=element_text(color="DarkGreen" , size=20) ,
    axis.title.y=element_text(color="Red" , size=20))

# Formato de las marcas:
h + 
  xlab("Presupuesto") +
  ylab("Número de Películas") +
  theme(
    axis.title.x=element_text(color="DarkGreen" , size=20) ,
    axis.title.y=element_text(color="Red" , size=20) ,
    
    axis.text.x=element_text(size=15))

h + 
  xlab("Presupuesto") +
  ylab("Número de Películas") +
  theme(
    axis.title.x=element_text(color="DarkGreen" , size=20) ,
    axis.title.y=element_text(color="Red" , size=20) ,
    
    axis.text.x=element_text(size=15) ,
    axis.text.y=element_text(size=15)
    )

# Theme
?theme

h + 
  xlab("Presupuesto") +
  ylab("Número de Películas") +
  theme(
    axis.title.x=element_text(color="DarkGreen" , size=20) ,
    axis.title.y=element_text(color="Red" , size=20) ,
    
    axis.text.x=element_text(size=15) ,
    axis.text.y=element_text(size=15) ,
    
    legend.title = element_text(size=20)
  )

h + 
  xlab("Presupuesto") +
  ylab("Número de Películas") +
  theme(
    axis.title.x=element_text(color="DarkGreen" , size=20) ,
    axis.title.y=element_text(color="Red" , size=20) ,
    
    axis.text.x=element_text(size=15) ,
    axis.text.y=element_text(size=15) ,
    
    legend.title = element_text(size=20),
    legend.text = element_text(size=15)
  )

# El orígen de coordenadas se sitúa en la parte inferior izquierda.
h + 
  xlab("Presupuesto") +
  ylab("Número de Películas") +
  theme(
    axis.title.x=element_text(color="DarkGreen" , size=20) ,
    axis.title.y=element_text(color="Red" , size=20) ,
    
    axis.text.x=element_text(size=15) ,
    axis.text.y=element_text(size=15) ,
    
    legend.title = element_text(size=20),
    legend.text = element_text(size=15),
    legend.position = c(0.98,0.98)
  )

h + 
  xlab("Presupuesto") +
  ylab("Número de Películas") +
  theme(
    axis.title.x=element_text(color="DarkGreen" , size=20) ,
    axis.title.y=element_text(color="Red" , size=20) ,
    
    axis.text.x=element_text(size=15) ,
    axis.text.y=element_text(size=15) ,
    
    legend.title = element_text(size=20),
    legend.text = element_text(size=15),
    legend.position = c(0.98,0.98),
    legend.justification = c(1,1)
  )

# Título del Diagrama:
h + 
  xlab("Presupuesto") +
  ylab("Número de Películas") +
  ggtitle("Distribución del Presupuesto en Películas") +
  theme(
    axis.title.x=element_text(color="DarkGreen" , size=20) ,
    axis.title.y=element_text(color="Red" , size=20) ,
    
    axis.text.x=element_text(size=15) ,
    axis.text.y=element_text(size=15) ,
    
    legend.title = element_text(size=20),
    legend.text = element_text(size=15),
    legend.position = c(0.98,0.98),
    legend.justification = c(1,1)
  )

h + 
  xlab("Presupuesto") +
  ylab("Número de Películas") +
  ggtitle("Distribución del Presupuesto en Películas") +
  theme(
    axis.title.x=element_text(color="DarkGreen" , size=20) ,
    axis.title.y=element_text(color="Red" , size=20) ,
    
    axis.text.x=element_text(size=15) ,
    axis.text.y=element_text(size=15) ,
    
    legend.title = element_text(size=20),
    legend.text = element_text(size=15),
    legend.position = c(0.98,0.98),
    legend.justification = c(1,1),
    
    plot.title = element_text(color="DarkBlue",size=25,
                              hjust=0.5)
  )