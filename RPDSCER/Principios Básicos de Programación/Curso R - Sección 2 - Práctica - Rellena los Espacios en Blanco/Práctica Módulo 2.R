N <- 100                        #Especificar el tama�o de la muestra
contador <- 0                   #reiniciar contador
for(i in rnorm(N)){             #iterar sobre vector de n�meros
  if(i > -1 & i < 1){           #revisar d�nde cae la variable iterada
    contador <- contador + 1    #incrementar el contador si se cumple la condici�n
  }
}
respuesta <- contador / N       #calcular el ratio de �xito
respuesta                       #imprimir el resultado en la consola


N <- 10000                      #Especificar el tama�o de la muestra
contador <- 0                   #reiniciar contador
for(i in rnorm(N)){             #iterar sobre vector de n�meros
  if(i > -1 & i < 1){           #revisar d�nde cae la variable iterada
    contador <- contador + 1    #incrementar el contador si se cumple la condici�n
  }
}
respuesta <- contador / N       #calcular el ratio de �xito
respuesta  
