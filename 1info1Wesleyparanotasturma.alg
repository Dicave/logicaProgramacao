algoritmo "semnome"
// Função :
// Autor :
// Data : 29/10/2018
// Seção de Declarações 
var


n1,n2,n3,soma,media,i,c,ma,me:inteiro
inicio

para i de 1 ate 3 faca

escreval("Informe a Primeira nota")
leia(n1)

escreval("Informe a Segunda nota")
leia(n2)

escreval("Informe a Terceira nota")
leia(n3)

media<-(n1+n2+n3)/3


c<-c+1
limpatela

escreval("media aluno ",c,":",media)

se media>=ma entao
 ma<-media

senao media<=me entao
 me<-media

 escreval("Maior media",ma)
 escreval("Maenor media",me)
fimse


fimpara



fimalgoritmo
