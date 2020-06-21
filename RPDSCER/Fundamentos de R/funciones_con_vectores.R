# Repaso de funciones
# Para ver el "help" de una función, escribimos ? antes

?rnorm()
rnorm(5, 20 ,3)
rnorm(n = 10 , sd = 5 , mean = 10)
# Se aplico lo visto en el help de la función rnorm
# para mean y sd

?c()

?seq()
seq(from=10,to=20,by=3) # 10 13 16 19
seq(from=10,to=20,length.out=20)
# [1] 10.00000 10.52632 11.05263 11.57895 12.10526 12.63158
# [7] 13.15789 13.68421 14.21053 14.73684 15.26316 15.78947
# [13] 16.31579 16.84211 17.36842 17.89474 18.42105 18.94737
# [19] 19.47368 20.00000
x1 <- c("a" , "b" , "c")
a1 <- seq(from=10,to=20,along.with=x1) # 10 15 20

?rep()
rep(5:6,each=5) # 5 5 5 5 5 6 6 6 6 6
rep(5:6,times=5) # 5 6 5 6 5 6 5 6 5 6

print()

is.numeric()

# Funciones con vectores como argumentos
sqrt(a1) # 3.162278 3.872983 4.472136

?qplot()
