# Exercício 1  Crie uma função que receba e 
#vetores como parâmetro,  converta os em um dataframe 
#e imprima

df<-function(vet1, vet2){
  data.frame(vet1, vet2)
}

df(c(2,3), c(5,30))

# Exercício 2 - Crie uma matriz com 4 linhas e 
#4 colunas preenchida com números inteiros e
#calcule a media de cada linha

mat<-matrix(c(1:16), nr = 4, nc = 4)
mat
mean(mat)
rowMeans(mat)

# Exercício 3 - Considere o dataframe abaixo. 
#Calcule a media por disciplina

escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matemática = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Química = c(76, 56, 89, 90, 100, 87))
escola
Geografia<-mean(escola[["Geografia"]])
Matemática<-mean(escola[["Matemática"]])
Química<-mean(escola[["Química"]])
Media<-c(Matemática, Geografia, Química)
Media
??apply
media<-subset.data.frame(escola, select = c(Matemática, Geografia, Química))
media_final<-lapply(media, mean)
media_final

# Exercício 4 - Cria uma lista com 3 elementos, 
#todos numéricos e calcule a soma de todos os elementos da lista

l1<-list(1,2,3)
l1
class(l1)
?do.call()
do.call(sum, l1)
# Exercício 5 - Transforme a lista anterior um vetor

v<-unlist(l1, use.names=FALSE)
library(dplyr)
is.vector(v)

# Exercício 6 - Considere a string abaixo. Substitua a palavra textos por frases

str <- c("Expressoes", "regulares", "em linguagem R",
         "permitem a busca de padroes", "e exploracao de textos",
         "podemos buscar padroes em digitos",
         "como por exemplo",
         "10992451280")
length(str)
str
?grep()
?gsub()
gsub('textos', 'frases',str)

# Exercício 7 - Usando o dataset mtcars, crie um gráfico 
# com ggplot do tipo scatter plot. Use as
# colunas disp e mpg nos eixos x e y respectivamente
head(mtcars)
trail(mtcars)
tail(mtcars)
library(ggplot2)
?aes
camada1<-geom_point(
  mapping = aes(x=mtcars$disp, y=mtcars$mpg, color='sex'),
  data = mtcars,
  size=3
)
plot_mtcars<- ggplot(
