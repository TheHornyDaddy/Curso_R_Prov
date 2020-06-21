juegos
colnames(juegos)
juegos["LeBronJames","2012"]
tiros_anotados

#Nota: Pra operar con amtrices, tienen que ser del mismo tamaño

# Obtengamos los tiros anotados por juego
round(tiros_anotados / juegos,1)

# Obtengamos los minutos jugados por juego
round(minutos_jugados / juegos)

minutos_jugados
