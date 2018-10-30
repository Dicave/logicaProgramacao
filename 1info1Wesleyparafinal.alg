algoritmo "semnome"
// Função :
// Autor :
// Data : 29/10/2018
// Seção de Declarações
var

media,ma,me:real
n1,n2,n3,soma,i,c,alp,alr:inteiro
inicio

para i de 1 ate 3 faca

escreval("Informe a Primeira nota")
leia(n1)

escreval("Informe a Segunda nota")
leia(n2)

escreval("Informe a Terceira nota")
leia(n3)

soma<-(n1+n2+n3)
media<-soma/3

ca<-c
c<-c+1
limpatela

escreval("media aluno ",c,":",media)

se media>=ma entao
 ma<-media

senao media<=me entao
 me<-media
 
fimse

se(media>=7)entao
alp<-alp+1

senao(media<7)entao
alr<-alr+1

fimse

 escreval("Maior media",ma)
 escreval("Menor media",me)
 escreval("")
 escreval("Alunos aprovados",alp:3:2)
 escreval("Alunos reprovados",alr:3:2)

 escreval("Media dos alunos")
 repita
 
 escreval("Aluno",ca,"Media:",)
 apresentar lista de media dos alunos e adicionar nome de cada aluno armazenar cada aluno ate o usuario desejar parar
 ate()
fimpara



fimalgoritmo
