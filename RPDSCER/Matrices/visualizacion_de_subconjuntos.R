# Visualizando subconjuntos

# Ejemplo 1:
datos1 <- minutos_jugados[1:3,]
datos1
#             2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
# KobeBryant  3277 3140 3192 2960 2835 2779 2232 3013  177 1207
# JoeJohnson  3340 2359 3343 3124 2886 2554 2127 2642 2575 2791
# LeBronJames 3361 3190 3027 3054 2966 3063 2326 2877 2902 2493

matplot(t(datos1) , type="b" , pch=15:18 , col=c(1:4,6))
legend("bottomleft" , inset=0.01 , legend=jugadores[1:3] , col=c(1:4,6) , pch=15:18 , horiz=F)


# Ejemplo 2:
datos2 <- minutos_jugados[1,]
datos2
# 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 
# 3277 3140 3192 2960 2835 2779 2232 3013  177 1207 

matplot(t(datos2) , type="b" , pch=15:18 , col=c(1:4,6))
legend("bottomleft" , inset=0.01 , legend=jugadores[1] , col=c(1:4,6) , pch=15:18 , horiz=F)
# Como R lee automáticamente que datos2 es un vector, por sus
# dimensiones, entonces no podemos graficar correctamente con
# matplot puesto que esta función es para matrices

# Correción
datos3 <- minutos_jugados[1,,drop=F]
datos3
#            2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
# KobeBryant 3277 3140 3192 2960 2835 2779 2232 3013  177 1207

matplot(t(datos3) , type="b" , pch=15:18 , col=c(1:4,6))
legend("bottomleft" , inset=0.01 , legend=jugadores[1] , col=c(1:4,6) , pch=15:18 , horiz=F)
