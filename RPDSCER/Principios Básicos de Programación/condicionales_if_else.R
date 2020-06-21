# Condicionales if, else y elif

# ---- -2 ---- -1 ---- 0 ---- 1 ---- 3

# Borrar una variable
rm(respuesta)
# Generar n número aleatorios con rnorm(n)
x <- rnorm(1) # Se genera un número aleatorio

# Anidando condicionales
if(x > 1){
  respuesta <- "Mayor que 1"
}else{
  
  if(x > -1){
    respuesta <- "Entre -1 y 1"
  }else{
    respuesta <- "Menor o igual que -1"  
  }
  
}

x <- rnorm(1) 
# Condicionales encadenados
if(x > 1){
  respuesta <- "Mayor que 1"
}else if(x > -1){
  respuesta <- "Entre -1 y 1"
}else{
  respuesta <- "Menor o igual que -1"  
}
