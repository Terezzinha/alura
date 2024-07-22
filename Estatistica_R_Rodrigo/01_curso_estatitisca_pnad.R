setwd("C:/Git/GitHub-terezzinha/alura/Estatistica_R_Rodrigo")
getwd()

## Analisando dados da PNAD/IBEGE

# Básico R
sessionInfo()

library(dplyr)

#> Acessando ajuda
#?select
#?arrange

# Importando o dataset do projeto
dados <- read.csv("dados.csv")
dados
head(dados, 10)

# Analisando dados
select(dados, "Anos.de.Estudo")
unique(select(dados, "Anos.de.Estudo"))
arrange(unique(select(dados, "Anos.de.Estudo")), "Anos.de.Estudo")
arrange(dados, "Idade")

c(arrange(unique(select(dados, "Anos.de.Estudo")), "Anos.de.Estudo"))
c(arrange(dados, "Idade"))

c(arrange(unique(select(dados, UF)), UF))

c(arrange(unique(select(dados, Sexo)), Sexo))

c(arrange(unique(select(dados, Cor)), Cor))


## Variáveis quantitativas dicretas

sprintf('De %s até %s', min(dados$Idade), max(dados$Idade))
library(glue)
glue('De {min(dados$Idade)} até {max(dados$Idade)} anos')
