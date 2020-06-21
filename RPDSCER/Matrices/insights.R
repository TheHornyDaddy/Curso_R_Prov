# Sueldos
mi_function(sueldos)
# Notemos que Kobe Bryant está por encima de los demás.
mi_function(sueldos / juegos)
# Notemos que hay dos picos debidos a Kobe Bryant y Derrick Rose.
mi_function(sueldos / tiros_anotados)
# Lo mismo que el análisis anterior.
# Los picos se deben a que no jugaron esos dos basketbolistas por
# una lesión.
# Una solución a este cezgo, es quitar esos datos pero la correcta
# es notar lo siguiente: los sueldos no se ven afectados por las
# lesiones pero los juegos si se ven afectados por ese motivo.
# Por ello comparemos datas que no se ven afectadas por las 
# lesiones con datas que no se ven afectadas por lesiones y
# viceversa con las que se ven afectadas por las lesiones.

# Lo que buscamos es normalizar las estadísitcas de los datos
# https://economipedia.com/definiciones/normalizacion-estadistica.html
# https://en.wikipedia.org/wiki/Normalization_(statistics)


# Métricas dentro del juego
mi_function(minutos_jugados)
mi_function(puntos)

# Métricas dentro del juego Normalizadas
mi_function(tiros_anotados/juegos)
# Se aprecia que Kobe Bryant ha bajado su ratio de tiros anotados
mi_function(tiros_anotados/tiros_intentados)
# Notemos que Dwight Howard está por encima de los dmeás en su
# porcentaje de tiros de campo.
mi_function(tiros_intentados/juegos)
# Resulta curioso que ahora Dwight Howard se encuentra por abajo
# del promedio.
mi_function(puntos/juegos)
# Ahora tiene sentido viendo que tiene pocos puntos por juego.


# Observación interesante
mi_function(minutos_jugados / juegos)
# Se aprecia que conforme pasan las temporadas, los jugadores 
# juegan cada vez menos tiempo.
mi_function(juegos)
# Sin embargo, vemos que no se debe a que haya menos juegos
# sino que hubo menos juegos en un pico en común debido a una
# huelga

# El tiempo es valioso
mi_function(tiros_anotados/minutos_jugados)
# Se aprecia que Kobre Bryant cada vez juega menos mientras que
# Kevin Durant llega al final a estar con el mejor desempeño.

# Estilo del jugador
mi_function(puntos/tiros_anotados)
# Para ver el estilo tendríamos que restarle a cada jugador
# los puntos debidos a los tiros libres.
# Se aprecia cómo ha variado el estilo de algunos jugadores
# aunque las cuasas son desconocidas,
# Los tiros libres tienen su propia estadísitca y por ello 
# no se cuentan en los tiros intentados.