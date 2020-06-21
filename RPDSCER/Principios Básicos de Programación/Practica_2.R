# Ley de los grandes números

contador <- 0
N <- 1000
for(i in 1:N){
  x <- rnorm(1)
  if(x >= -1 & x <= 1){
    contador <- contador + 1
  }
}
media <- contador / N
media