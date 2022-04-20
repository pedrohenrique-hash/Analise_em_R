numero_classe <- function(numero) {
    k <- (1+ 3.3 * log(numero))
    return(k)
}

intervalo_classe<- function(maximo_minimo, numero_classe) {
    h <- (maximo_minimo/numero_classe)
    return(h)
}


notas_alunos<-c(4.2,6.0,6.0,3.9,4.5,7.4,5.7,5.0,8.8,6.5,7.2,3.8,4.6,6.4,5.5,6.3,7.2,5.0,8.0,5.0,6.6,4.4,6.8,7.1,5.0,4.7,5.3,5.5,3.5,4.7)

notas_alunos <- sort(notas_alunos)

# print(notas_alunos)

sem_repitir <- unique(notas_alunos)
# print(sem_repitir)


h<-hist(notas_alunos, breaks= sem_repitir,
freq =FALSE, ylab= "As notas", xlab = "notas dos notas_alunos", main = "",
col = topo.colors(7))
