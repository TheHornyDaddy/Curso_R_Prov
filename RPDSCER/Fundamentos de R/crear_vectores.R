# Creación de un vector

mi_primer_vector <- c(5,9,48,598)
mi_primer_vector

# Comprobar si un objeto es un vector (num)
is.numeric(mi_primer_vector)
is.integer(mi_primer_vector)
is.double(mi_primer_vector)
# Es double porque no especificamos con L que los números
# almacenados fuesen enteros, además, R asume que haremos
# operaciones con el vector

v2 <- c(5L,9L,58L,565L)

# Hagamos las mis mas comprobaciones
is.numeric(v2)
is.integer(v2)
is.double(v2)
# Se aprecia que ahora es TRUE para enteros, es decir, los
# números dentro del vector son enteros.

v4 <- c("f" , "4h2" , "Hola" , 6 )
# No se pueden combinar tipo de datos dentro de un vector
# Por ello que 6 se almacene como un dato tipo character.

# sequence  - secuencia - seq() - 1:15
seq(1,15)
seq(1:15) # la notación es equivalente a la anterior pero
# por ser una funci´pn, usaremos coma
1:15

# Secuencia con patrones
seq(1,15,2) # 1  3  5  7  9 11 13 15
# Esto no se puede hacer con la notación 1:15

z1 <- seq(1,15,4)
z1

# replicate - repetir - rep()
d1 <- rep(4,70)
d1

d2 <- rep("n",20)
d2

d3 <- rep(z1,6)
d3
