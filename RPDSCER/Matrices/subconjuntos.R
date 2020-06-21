# Subconjuntos (Subsetting)

# Subconjuntos de elementos de vectores
x <- c("a","b","c","d","e")
x

x[c(1,5)] # "a" "e"
x[1] # "a" 


# Subconjunto de matrices
juegos
#                 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
# KobeBryant       80   77   82   82   73   82   58   78    6   35
# JoeJohnson       82   57   82   79   76   72   60   72   79   80
# LeBronJames      79   78   75   81   76   79   62   76   77   69
# CarmeloAnthony   80   65   77   66   69   77   55   67   77   40
# DwightHoward     82   82   82   79   82   78   54   76   71   41
# ChrisBosh        70   69   67   77   70   77   57   74   79   44
# ChrisPaul        78   64   80   78   45   80   60   70   62   82
# KevinDurant      35   35   80   74   82   78   66   81   81   27
# DerrickRose      40   40   40   81   78   81   39    0   10   51
# DwayneWade       75   51   51   79   77   76   49   69   54   62

juegos[1:3,6:10]
#              2010 2011 2012 2013 2014
# KobeBryant    82   58   78    6   35
# JoeJohnson    72   60   72   79   80
# LeBronJames   79   62   76   77   69

juegos[,c("2008","2009")]
#                 2008 2009
# KobeBryant       82   73
# JoeJohnson       79   76
# LeBronJames      81   76
# CarmeloAnthony   66   69
# DwightHoward     79   82
# ChrisBosh        77   70
# ChrisPaul        78   45
# KevinDurant      74   82
# DerrickRose      81   78
# DwayneWade       79   77

juegos[1,]
# 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 
#  80   77   82   82   73   82   58   78    6   35 

juegos[,1]
# KobeBryant     JoeJohnson    LeBronJames CarmeloAnthony 
# 80             82             79             80 
# DwightHoward      ChrisBosh      ChrisPaul    KevinDurant 
# 82             70             78             35 
# DerrickRose     DwayneWade 
# 40             75 


# Notemos lo siguiente sobre los tipos de datos de los sub-
# juntos anteriores
is.matrix(juegos[1:3,6:10]) # TRUE
is.matrix(juegos[,c("2008","2009")]) # TRUE
is.matrix(juegos[1,]) # FALSE
is.matrix(juegos[,1]) # FALSE
# Dio FALSE para los subconjuntos que son vectores

# Convirtamos los vectores a matrices
juegos[1 , , drop=F]
#             2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
# KobeBryant   80   77   82   82   73   82   58   78    6   35
is.matrix(juegos[1 , , drop=F]) # TRUE
# Se verifica que ahora es una matriz