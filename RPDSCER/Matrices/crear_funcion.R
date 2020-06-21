# Crear una función

mi_function <- function(data,filas=1:10){
  datos <- data[filas,,drop=F]
  matplot(t(datos) , type="b" , pch=15:18 , col=c(1:4,6))
  legend("bottomleft" , inset=0.01 , legend=jugadores[filas] , col=c(1:4,6) , pch=15:18 , horiz=F)
}

mi_function(minutos_jugados/juegos,6)
# data: matriz a graficar
# filas: nombre del jugador