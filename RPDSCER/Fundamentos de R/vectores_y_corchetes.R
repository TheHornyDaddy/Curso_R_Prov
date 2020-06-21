w <- c("a","b","c","d","e")
w

# Accedamos a los elementos del vector
w[1]
w[2]
w[5]

# Entradas negativas para quitar una entrada 
w[-1] # "b" "c" "d" "e"
w[-3] # "a" "b" "d" "e"

m <- w[-3]
m

# Accedamos a secuencias de los elementos de vectores
# como vectores
1:3
w[1:3] # "a" "b" "c"
w[3:5] # "c" "d" "e"

# Quitqr o mostrar un conjunto de elementos específicos
w[c(1,3,5)] # "a" "c" "e"
w[c(-2,-4)] # "a" "c" "e"

# Otra manera
w[-3:-5] # "a" "b" quita los elementos del 3 al 5
w[1:2] # "a" "b"

# Pracctica
w[-1:-4] # "e"
w[-8] # "a" "b" "c" "d" "e"
w[-6] # "a" "b" "c" "d" "e"
w[-4:-1] # "e"
