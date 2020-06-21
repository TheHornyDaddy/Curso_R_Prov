#Matriz para Tiros Libres
#Une los vectores correspondientes para esta matriz
tiros_libres <- rbind(KobeBryant_TL, JoeJohnson_TL, LeBronJames_TL, CarmeloAnthony_TL, DwightHoward_TL, ChrisBosh_TL, ChrisPaul_TL, KevinDurant_TL, DerrickRose_TL, DwayneWade_TL)
#Elimina los vectores que ya no necesitamos
rm(KobeBryant_TL, JoeJohnson_TL, LeBronJames_TL, CarmeloAnthony_TL, DwightHoward_TL, ChrisBosh_TL, ChrisPaul_TL, KevinDurant_TL, DerrickRose_TL, DwayneWade_TL)
#Agrega el nombre de las columnas
colnames(tiros_libres) <- temporadas
#Agrega el nombre de las filas
rownames(tiros_libres) <- jugadores

#Revisar la matriz
tiros_libres

#Matriz para Tiros Libres Intentados
#Une los vectores correspondientes para esta matriz
tiros_libres_intentados <- rbind(KobeBryant_TLI, JoeJohnson_TLI, LeBronJames_TLI, CarmeloAnthony_TLI, DwightHoward_TLI, ChrisBosh_TLI, ChrisPaul_TLI, KevinDurant_TLI, DerrickRose_TLI, DwayneWade_TLI)
#Elimina los vectores que ya no necesitamos
rm(KobeBryant_TLI, JoeJohnson_TLI, LeBronJames_TLI, CarmeloAnthony_TLI, DwightHoward_TLI, ChrisBosh_TLI, ChrisPaul_TLI, KevinDurant_TLI, DerrickRose_TLI, DwayneWade_TLI)
#Agrega el nombre de las columnas
colnames(tiros_libres_intentados) <- temporadas
#Agrega el nombre de las filas
rownames(tiros_libres_intentados) <- jugadores

#Revisa la matriz
tiros_libres_intentados

#Recrea la funci?n para graficar
mi_funcion <- function(datos, filas=1:10) {
  matplot(t(datos[filas,,drop=F]), type="b", pch=15:18, col=c(1:4,6), main="Análisis de jugadores")
  legend("bottomleft", inset=0.01, legend=jugadores[filas], col=c(1:4,6), pch=15:18, horiz=F)
}

#Visualiza las nuevas matrices
mi_funcion(tiros_libres)
mi_funcion(tiros_libres_intentados)

#Parte 1 - Tiros Libres Intentados por Juego
#(Necesitar?s la matriz de Juegos)
mi_funcion(tiros_libres_intentados/juegos)
#F?jate c?mo Chris Paul recibe menos intentos por juego

#Parte 2 - Precisi?n en Tiros Libres
mi_funcion(tiros_libres/tiros_libres_intentados)
#Y a?n as? la precisi?n de Chris Paul es una de las m?s elevadas
#Tambi?n f?jate que la precisi?n de Dwight Howard est? muy baja
#comparada con otros jugadores. Si recuerdas, comparaddo con 
#otros jugadores, Dwight Howard era muy preciso en tiros de campo
mi_funcion(tiros_anotados/tiros_intentados)
#?C?mo es posible esto? ?Por qu? hay una diferencia tan dr?stica?
#Justo eso vamos a ver ahora

#Parte 3 - Estilo de juego del jugador sin contabilizar tiros libres
mi_funcion((puntos - tiros_libres)/tiros_anotados)
mi_funcion(round((puntos - tiros_libres)/tiros_anotados))
#Debido a que hemos exluidos los tiros libres, esta gr?fica 
#ahora nos muestra la representaci?n m?s acertada de c?mo ha 
#ido cambiando el estilo de los jugadores. Podemos verificarlo 
#porque ahora todos los marcadores en esta gr?fica est?n entre
#2 y 3. Eso es porque los tiros de campo solamente pueden contar
#por 2 o 3 puntos. 
#
#Insights:
#1. Puedes ver c?mo ha ido cambiando durante su carrera la 
#   preferencia de los jugadores por tiros de 2 o 3 puntos. 
#   Podemos ver que casi todos los jugadores en este set de
#   datos han tenido cambios a lo largo de su carrera. 
#   Por ejemplo, Joe Johnson, Chris Bosh, Chris Paul
#2. Sin embargo hay una excepci?n. Puedes ver un jugador 
#   que no ha cambiado su estilo a lo largo de su carrera. 
#   Anotando ?nicamente tiros de 2 puntos. ?Este jugador es
#   Dwight Howard!
#   Eso explica mucho. La raz?n por la cual la precisi?n 
#   de Dwight Howard es tan buena es porque casi siempre
#   anota ?nicamente canastas de 2 puntos. Eso significa 
#   que se puede acercar m?s a la canasta, o incluso estar
#   pegado a ella. Pero lo tiros libre requieren que el
#   el jugador est? a 15ft. separado de la canasta. 
#   Probablemente por eso la precisi?n de Dwight Howard 
#   en los tiros libre es tan baja.