getwd()
setwd("C:\\Git\\R_para_Data_Science_con_Ejercicios_Reales\\Visualizaciones Avanzadas GGPlot2")
getwd()

peliculas <- read.csv("Ratings Peliculas.csv")
head(peliculas)
#                Película   Género Ratings.Rotten.Tomatoes.. Ratings.Audiencia.. Presupuesto..millones... Año.Lanzamiento
# 1 (500) Days of Summer   Comedia                        87                  81                        8            2009
# 2           10,000 B.C. Aventura                         9                  44                      105            2008
# 3            12 Rounds    Acción                        30                  52                       20            2009
# 4             127 Hours Aventura                        93                  84                       18            2010
# 5             17 Again   Comedia                        55                  70                       20            2009
# 6                  2012   Acción                        39                  63                      200            2009

# Los .. aparecen porque sustituyen el símbolo $ en el nombre de las columnas.
# Cambiemos el nombre de las columnas

colnames(peliculas) <- c("Película","Género","RatingCriticos",
                         "RatingAudiencia","PresupuestoMillones","Año")
head(peliculas)
#                Película   Género RatingCriticos RatingAudiencia PresupuestoMillones  Año
# 1 (500) Days of Summer   Comedia             87              81                   8 2009
# 2           10,000 B.C. Aventura              9              44                 105 2008
# 3            12 Rounds    Acción             30              52                  20 2009
# 4             127 Hours Aventura             93              84                  18 2010
# 5             17 Again   Comedia             55              70                  20 2009
# 6                  2012   Acción             39              63                 200 2009
tail(peliculas)
#                       Película   Género RatingCriticos RatingAudiencia PresupuestoMillones  Año
# 557              Your Highness  Comedia             26              36                  50 2011
# 558            Youth in Revolt  Comedia             68              52                  18 2009
# 559 Zack and Miri Make a Porno  Romance             64              70                  24 2008
# 560                     Zodiac Suspenso             89              73                  65 2007
# 561                Zombieland    Acción             90              87                  24 2009
# 562                  Zookeeper  Comedia             14              42                  80 2011

str(peliculas)
# 'data.frame':	562 obs. of  6 variables:
# $ Película           : Factor w/ 562 levels "(500) Days of Summer ",..: 1 2 3 4 5 6 7 8 9 10 ...
# $ Género             : Factor w/ 7 levels "Acción","Aventura",..: 3 2 1 2 3 1 3 7 3 3 ...
# $ RatingCriticos     : int  87 9 30 93 55 39 40 50 43 93 ...
# $ RatingAudiencia    : int  81 44 52 84 70 63 71 57 48 93 ...
# $ PresupuestoMillones: int  8 105 20 18 20 200 30 32 28 8 ...
# $ Año                : int  2009 2008 2009 2010 2009 2009 2008 2007 2011 2011 ...

summary(peliculas)
#                Película        Género    RatingCriticos RatingAudiencia PresupuestoMillones      Año      
# (500) Days of Summer :  1   Acción  :154   Min.   : 0.0   Min.   : 0.00   Min.   :  0.0       Min.   :2007  
# 10,000 B.C.          :  1   Aventura: 29   1st Qu.:25.0   1st Qu.:47.00   1st Qu.: 20.0       1st Qu.:2008  
# 12 Rounds            :  1   Comedia :172   Median :46.0   Median :58.00   Median : 35.0       Median :2009  
# 127 Hours            :  1   Drama   :101   Mean   :47.4   Mean   :58.83   Mean   : 50.1       Mean   :2009  
# 17 Again             :  1   Romance : 21   3rd Qu.:70.0   3rd Qu.:72.00   3rd Qu.: 65.0       3rd Qu.:2010  
# 2012                 :  1   Suspenso: 36   Max.   :97.0   Max.   :96.00   Max.   :300.0       Max.   :2011  
# (Other)              :556   Terror  : 49                                                                   

# Notemos que R trata el Año como una variable, lo cual no queremos que pase.

# Combirtamos esa variable en un factor o categoría:
peliculas$Año <- factor(peliculas$Año)
summary(peliculas)
#                Película        Género    RatingCriticos RatingAudiencia PresupuestoMillones   Año     
# (500) Days of Summer :  1   Acción  :154   Min.   : 0.0   Min.   : 0.00   Min.   :  0.0       2007: 79  
# 10,000 B.C.          :  1   Aventura: 29   1st Qu.:25.0   1st Qu.:47.00   1st Qu.: 20.0       2008:125  
# 12 Rounds            :  1   Comedia :172   Median :46.0   Median :58.00   Median : 35.0       2009:116  
# 127 Hours            :  1   Drama   :101   Mean   :47.4   Mean   :58.83   Mean   : 50.1       2010:119  
# 17 Again             :  1   Romance : 21   3rd Qu.:70.0   3rd Qu.:72.00   3rd Qu.: 65.0       2011:123  
# 2012                 :  1   Suspenso: 36   Max.   :97.0   Max.   :96.00   Max.   :300.0                 
# (Other)              :556   Terror  : 49                                                      
str(peliculas)
# 'data.frame':	562 obs. of  6 variables:
# $ Película           : Factor w/ 562 levels "(500) Days of Summer ",..: 1 2 3 4 5 6 7 8 9 10 ...
# $ Género             : Factor w/ 7 levels "Acción","Aventura",..: 3 2 1 2 3 1 3 7 3 3 ...
# $ RatingCriticos     : int  87 9 30 93 55 39 40 50 43 93 ...
# $ RatingAudiencia    : int  81 44 52 84 70 63 71 57 48 93 ...
# $ PresupuestoMillones: int  8 105 20 18 20 200 30 32 28 8 ...
# $ Año                : Factor w/ 5 levels "2007","2008",..: 3 2 3 4 3 3 2 1 5 5 ...

# Se aprecia que Año es ahora un factor.