# Visualizaciones

# Matplot
?matplot

# Tiros anotados:

# Grafiquemos los tiros anotados por temporada
# Para graficarla, con las temporadas en el eje x y los
# tiros anotados en el eje y, tenemos que transponer la
# matriz, además de mostrar separadamente los resultados de
# cada jugador.

tiros_anotados
t(tiros_anotados)

# tiros_anotados_1:
matplot(t(tiros_anotados) , type="b" , pch=15:18 , col=c(1:4,6))
legend("bottomleft" , inset=0.01 , legend=jugadores , col=c(1:4,6) , pch=15:18 , horiz=F)

#tiros_anotados_2: col=c(1:8,6))
matplot(t(tiros_anotados) , type="b" , pch=15:18 , col=c(1:8,6))
legend("bottomleft" , inset=0.01 , legend=jugadores , col=c(1:8,6) , pch=15:18 , horiz=F)

# tiros_anotados_3: pch=1:10
matplot(t(tiros_anotados) , type="b" , pch=1:10 , col=c(1:4,6))
legend("bottomleft" , inset=0.01 , legend=jugadores , col=c(1:4,6) , pch=1:10 , horiz=F)

# tiros_anotados_4:
matplot(t(tiros_anotados) , type="b" , pch=15:18 , col=c(1:4,10))
legend("bottomleft" , inset=0.01 , legend=jugadores , col=c(1:4,10) , pch=15:18 , horiz=F)

# tiros_anotados_5: col=c(6:10,3)
matplot(t(tiros_anotados) , type="b" , pch=15:18 , col=c(6:10,3))
legend("bottomleft" , inset=0.01 , legend=jugadores , col=c(6:10,3) , pch=15:18 , horiz=F)

# tiros_anotados_6: inset=0.1
matplot(t(tiros_anotados) , type="b" , pch=15:18 , col=c(1:4,6))
legend("bottomleft" , inset=0.1 , legend=jugadores , col=c(1:4,6) , pch=15:18 , horiz=F)

# tiros_anotados_7: type="p"
matplot(t(tiros_anotados) , type="p" , pch=15:18 , col=c(1:4,6))
legend("bottomleft" , inset=0.01 , legend=jugadores , col=c(1:4,6) , pch=15:18 , horiz=F)


# Tiros anotados por juego:
matplot(t(tiros_anotados/juegos) , type="b" , pch=15:18 , col=c(1:4,6))
legend("bottomleft" , inset=0.01 , legend=jugadores , col=c(1:4,6) , pch=15:18 , horiz=F)


# Tiros intentados por juego:
matplot(t(tiros_intentados/juegos) , type="b" , pch=15:18 , col=c(1:4,6))
legend("bottomleft" , inset=0.01 , legend=jugadores , col=c(1:4,6) , pch=15:18 , horiz=F)
