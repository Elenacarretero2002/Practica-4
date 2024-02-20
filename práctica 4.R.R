nuevo_dir(C:práctica 4)

#EJERCICIO 1
install.packages("readxl")
library(readxl)
spear <- read_excel("C:/spearheads/spearheads.xlsx")
spear <- data.frame(spear)
class(spear)

#EJERCICIO 2

names(spear)[names(spear) == "Mat"] <- "Materiales"
names(spear)[names(spear) == "Con"] <- "Contexto"
names(spear)[names(spear) == "Cond"] <- "Conservación"
names(spear)[names(spear) == "Peg"] <- "Remache"
names(spear)[names(spear) == "Maxle"] <- "Longitud_max"
names(spear)[names(spear) == "Socle"] <- "Longitud_encaje"
names(spear)[names(spear) == "Maxwi"] <- "Ancho_max"
names(spear)[names(spear) == "Upsoc"] <- "Ancho_encaje"
names(spear)[names(spear) == "Maxwit"] <- "Ancho_max_encaje"
names(spear)[names(spear) == "Weight"] <- "Peso"
spear
view(spear)

#renombramos las variables del excel realizando comandos para las siguientes operaciones


#EJERCICIO 3

spear$Contexto=factor(spear$Contexto,levels=c('1','2','3'),labels=c("s/c", "Habitacional", "Funerario"))
spear$Conservación=factor(spear$Conservación,levels=c(1,2,3,4),labels=c("Excelente", "Bueno", "Regular", "Malo"))
spear$Remache=factor(spear$Remache,levels=c(1,2),labels=c('Si','No'))
spear$Materiales=factor(spear$Materiales,levels=c(1,2),labels=c('Bronce', 'Hierro'))
spear

#Se asocian valores a la variable

#EJERCICIO 4


