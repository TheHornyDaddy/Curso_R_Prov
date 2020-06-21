# Creación de una amtriz


# matriz():
?matrix()
# Creemos un conjunto de datos
mis_datos <- 1:20
mis_datos

A <- matrix(mis_datos , 4 , 5)
A

# Accecemos a elementos de la matriz
A[2,3]
A[3,4]


# rbind():

# Creemos un conjunto de vectores:
v1 <- c("a" , "b" , "c")
v2 <- c("x" , "y" , "z")
v3 <- c(1,2,3)

# Creemos la matriz
C <- rbind(v1,v2,v3)
C
# Notemos que los números fueron convertidos a caractéres.

# cbind():
D <- cbind(v1,v2,v3)
D
