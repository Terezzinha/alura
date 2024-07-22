numeros <-  c(2, 3, 7, 8, 1, 3, 4, 8, 22, 67, 19)
mean(numeros)
median(numeros)

## Teste de hipóstes
shapiro.test(numeros)

numeros <- c (1, 3, 5, 6, 10, 19, 23, 5, 7, 89, 15, 14, 22, 23, 32, 23, 37)
summary(numeros)
boxplot(numeros)

## Salvar boxplot como imagem
png(file="User/alura/boxplot.png", width=700, height=700)
boxplot(numeros)
dev.off()
## Variância
var(numeros)
## Desvio padrao
sd(numeros)
## Lendo um arquivo csv
arquivo_numeros <- read.csv(file="numeros.csv")
arquivo_numeros
## Lendo uma coluna
arquivo_numeros$X1
## histograma de uma coluna
hist(arquivo_numeros$X1)

## Intervalo de confiança
lizard = c(1,3,45,6,7,4,6,7,88, 43,65,23,43, 52, 53,13,56,32,66,33)
t.test(lizard)
t.test(lizard , conf.level = 0.5)

media <- mean(lizard)
media
hist(lizard)
abline(v=media, col="blue", lwd=2)
abline(v=20.2, col="red", lwd=4)
