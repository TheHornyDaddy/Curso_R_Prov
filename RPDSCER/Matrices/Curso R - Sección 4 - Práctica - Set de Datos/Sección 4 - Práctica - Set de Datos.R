#Querido estudiante,
#
#Bienvenido a la práctica para esta sección. 
#En este documento encontrarás el set de datos 
#que te servirá para completar la sección. 
#
#Instrucciones para este set de datos:
# 
#Solamente te han sido proporcionados los vectores. 
#Tú deberás de crear las matrices por ti mismo. 
#
#Matrices:
#- tiros_libres
#- tiros_libres_intentados
#
#
#Sinceramente,
#Diego López
#www.superdatascience.com
#
#Copyright: Estos sets de datos han sido preparados 
#con información disponible al público.
#Sin embargo, estos scripts están sujetos a las 
#leyes de Derecho de Autor.
#Si desear utilizar estos scripts fuera del curso de 
#Programación en Python creado por Kirill Eremenko, 
#lo puedes hacer referenciando www.superdatascience.com 
#en tu trabajo. 

#Comentarios:
#Las temporadas están etiquetadas con el primer año de 
#la temporada
#Ejemplo: la temporada 2012-2013 es presentada como 2012

#Notas adicionales:
# Kevin Durant: 2006 - Datos de temporada universitaria
# Kevin Durant: 2005 - Creada con datos  del 2006
# Derrick Rose: 2012 - No jugó
# Derrick Rose: 2007 - Datos de temporada universitaria
# Derrick Rose: 2006 - Creada con datos de temporada 2007
# Derrick Rose: 2005 - Creada con datos de temporada 2007

#Temporadas
temporadas <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Jugadores
jugadores <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Tiros Libres
KobeBryant_TL <- c(696,667,623,483,439,483,381,525,18,196)
JoeJohnson_TL <- c(261,235,316,299,220,195,158,132,159,141)
LeBronJames_TL <- c(601,489,549,594,593,503,387,403,439,375)
CarmeloAnthony_TL <- c(573,459,464,371,508,507,295,425,459,189)
DwightHoward_TL <- c(356,390,529,504,483,546,281,355,349,143)
ChrisBosh_TL <- c(474,463,472,504,470,384,229,241,223,179)
ChrisPaul_TL <- c(394,292,332,455,161,337,260,286,295,289)
KevinDurant_TL <- c(209,209,391,452,756,594,431,679,703,146)
DerrickRose_TL <- c(146,146,146,197,259,476,194,0,27,152)
DwayneWade_TL <- c(629,432,354,590,534,494,235,308,189,284)

#Matriz

tiros_libres <- rbind(KobeBryant_TL, JoeJohnson_TL, LeBronJames_TL,CarmeloAnthony_TL, DwightHoward_TL, ChrisBosh_TL, ChrisPaul_TL, KevinDurant_TL, DerrickRose_TL, DwayneWade_TL)
rm(KobeBryant_TL, JoeJohnson_TL, LeBronJames_TL,CarmeloAnthony_TL, DwightHoward_TL, ChrisBosh_TL, ChrisPaul_TL, KevinDurant_TL, DerrickRose_TL, DwayneWade_TL)
colnames(tiros_libres) <- temporadas
rownames(tiros_libres) <- jugadores


#Tiros Libres Intentados
KobeBryant_TLI <- c(819,768,742,564,541,583,451,626,21,241)
JoeJohnson_TLI <- c(330,314,379,362,269,243,186,161,195,176)
LeBronJames_TLI <- c(814,701,771,762,773,663,502,535,585,528)
CarmeloAnthony_TLI <- c(709,568,590,468,612,605,367,512,541,237)
DwightHoward_TLI <- c(598,666,897,849,816,916,572,721,638,271)
ChrisBosh_TLI <- c(581,590,559,617,590,471,279,302,272,232)
ChrisPaul_TLI <- c(465,357,390,524,190,384,302,323,345,321)
KevinDurant_TLI <- c(256,256,448,524,840,675,501,750,805,171)
DerrickRose_TLI <- c(205,205,205,250,338,555,239,0,32,187)
DwayneWade_TLI <- c(803,535,467,771,702,652,297,425,258,370)

#Matriz

tiros_libres_intentados <- rbind(KobeBryant_TLI, JoeJohnson_TLI, LeBronJames_TLI,CarmeloAnthony_TLI, DwightHoward_TLI, ChrisBosh_TLI, ChrisPaul_TLI, KevinDurant_TLI, DerrickRose_TLI, DwayneWade_TLI)
rm(KobeBryant_TLI, JoeJohnson_TLI, LeBronJames_TLI,CarmeloAnthony_TLI, DwightHoward_TLI, ChrisBosh_TLI, ChrisPaul_TLI, KevinDurant_TLI, DerrickRose_TLI, DwayneWade_TLI)
colnames(tiros_libres_intentados) <- temporadas
rownames(tiros_libres_intentados) <- jugadores
tiros_libres_intentados
