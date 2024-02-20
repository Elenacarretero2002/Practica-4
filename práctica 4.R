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


#renombramos las variables del excel realizando comandos para las siguientes operaciones


#EJERCICIO 3

spear$Contexto=factor(spear$Contexto,levels=c('1','2','3'),labels=c("s/c", "Habitacional", "Funerario"))
spear$Conservación=factor(spear$Conservación,levels=c(1,2,3,4),labels=c("Excelente", "Bueno", "Regular", "Malo"))
spear$Remache=factor(spear$Remache,levels=c(1,2),labels=c('Si','No'))
spear$Materiales=factor(spear$Materiales,levels=c(1,2),labels=c('Bronce', 'Hierro'))
spear

#Se asocian valores a la variable

#EJERCICIO 4
freq.Mat=table(spear$Materiales)
View (freq.Mat)
freq.Con=table(spear$Contexto)
View (freq.Con)
freq.Cond=table(spear$ConservaciÓn)
View (freq.Cond)

#Ejercicio 5. 

cross.condcon=table(spear$Materiales, spear$Contexto)
cross.condcon
cross.condmat=table(spear$Conservacion, spear$Materiales)
cross.condmat

#Ejercicio 6
prop.Mat=prop.table(freq.Mat)
View(prop.Mat)
prop.Mat <- as.data.frame(prop.Mat)
prop.Mat$Porcentaje <- prop.Mat$Freq * 100
prop.Mat

#Ejercicio 7
prop.cross.condcon=round(prop.table(cross.condcon)*100,0)
View(prop.cross.condcon)
prop.cross.condmat=round(prop.table(cross.condmat)*100,0)
View(prop.cross.condmat)

#Ejercicio 8

bar.con=barplot(table(spear$Contexto))
bar.cond=barplot(table(spear$Conservacion))

#Ejercicio 9

barh.mater=barplot(table(spear$Materiales), horiz=TRUE)
xlim <- c(0, 1.2*max())

#Ejercicio 10

cross.condmat <- table(spear$Materiales, spear$Conservacion)
df_cross.condmat <- as.data.frame(cross.condmat)
colnames(df_cross.condmat) <- c("Materiales", "conservación")
barplot(df_cross.condmat$Frecuencia, beside = TRUE, 
        main = "Conservacion de Materiales",
        xlab = "Material", ylab = "Frecuencia",
        col = c("pink", "blue","green","red"),
        legend=rownames(df_cross.condmat))

#Ejercicio 11

count <- c("Conservación")
pie(count)
pie(count,  labels = count)
frequencia.Conservacion <- table(spear$Conservación)
prop.Conservacion <- prop.table(freq.Conservacion) *100
pie(freq.Conservacion, labels = labels, main = "Porcentaje de Conservacion")
seq.int("Conservación")

#Ejercicio 12

par(mfrow = c(1, 2))
barplot(table(spear$Material), main = "Material", xlab = "Material", ylab = "Frecuencia")
barplot(table(spear$Remache), main = "Remache", xlab = "Remache", ylab = "Frecuencia")


set.seed(123) 
spear <- rnorm(1000, mean = 10, sd = 2)  
hist(spear, freq = FALSE, main = "Histograma de probabilidad", xlab = "Datos", ylab = "Densidad")
curve(dnorm(x, mean = mean(spear), sd = sd(spear)), 
      add = TRUE, col = "red", lwd = 2)


