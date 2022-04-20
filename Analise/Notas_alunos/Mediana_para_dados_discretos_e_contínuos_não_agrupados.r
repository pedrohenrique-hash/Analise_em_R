# Funções necessarias
middle.value = function(array_sort){
    size=length(array_sort)/2
     return( array_sort[size])
}
middle.value.add.One = function(array_sort){
    size=length(array_sort)/2
     return( array_sort[size+1])
}

Median.for.discrete.data = function(array_sort){
    result = ((middle.value(array_sort))+(middle.value.add.One(array_sort)))/2
    return(result)
}

# Observar se todos os itens necessarios foram instalados
# if(!require(dplyr))
#   install.packages("dplyr")


# Encontra o banco de dados
data <- read.csv('~/Documentos/ESTUDOS/Analise_em_R/Analise/Notas_alunos/ProduçãoMensal.csv', sep=',')
View(data)

# Ordena o numero de produtos produzidos
sortdata<-c(sort(data$Produção_unidades)) 

print(sortdata)

# Encontrar o elemento do meio do array
middle.element<-middle.value(sortdata)
print(middle.element)

print(Median.for.discrete.data(sortdata))