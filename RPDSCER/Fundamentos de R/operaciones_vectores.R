x <- rnorm(5)

# Ciclo en R
for(i in x){
  print(i)
}

# La siguiente manera es la forma arcaica de imprimir los elementos de un vector
print(x[1])
print(x[2])
print(x[3])
print(x[5])
print(x[5])

# Ciclo con método convencional
for(j in 1:5){
  print(x[j])
}

# Segunda parte:

N <- 100
a <- rnorm(N)
b <- rnorm(N)

# Veamos la diferencia entre lengiajes con vectores y los lengiajes convencionales
# Método con vectores: diferencia del valor de la entrada
c <- a*b
c

# Método convencional
d <- rep(NA,N)

for(i in 1:N){
  d[i] <- a[i]*b[i]
}
d

# Verifiquemos que c y d sean el mismo vector
c-d

# Computacionalmente, es más rápido el método de R y es apreciable para grandes
# vectores.