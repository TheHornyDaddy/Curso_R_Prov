# Vectores con nombres

Tony <- 1:5
Tony

names(Tony)
# En este caso no tiene nombre: NULL

names(Tony) <- c("a","b","c","d","e")
Tony
# Se visualiza lo siguiente en el IDE
# a b c d e 
# 1 2 3 4 5 


# Limpiar nombres:
names(Tony) <- NULL
Tony
# Se visualiza lo siguiente en el IDE
# 1 2 3 4 5

# Nombrar dimensiones de matrices:
vector_temporal <- rep(c("a","b","c"),each=3)
vector_temporal # "a" "a" "a" "b" "b" "b" "c" "c" "c"

Parra <- matrix(vector_temporal, 3 , 3)
Parra

rownames(Parra) # NULL
colnames(Parra) # NULL

rownames(Parra) <- c("Perro","Flor","Coco")
Parra
# [,1] [,2] [,3]
# Perro "a"  "b"  "c" 
# Flor  "a"  "b"  "c" 
# Coco  "a"  "b"  "c" 

colnames(Parra) <- c("x","y","z")
Parra
# x   y   z  
# Perro "a" "b" "c"
# Flor  "a" "b" "c"
# Coco  "a" "b" "c"


# Modifiquemos el valor de alguna entrada de la matriz
Parra[2,3] # "c"
Parra["Flor","z"] # "c"
Parra["Flor","z"] <- 5
Parra
# x   y   z  
# Perro "a" "b" "c"
# Flor  "a" "b" "5"
# Coco  "a" "b" "c"


# Quitemos los nombres
rownames(Parra) <- NULL
Parra
# x   y   z  
# [1,] "a" "b" "c"
# [2,] "a" "b" "5"
# [3,] "a" "b" "c"