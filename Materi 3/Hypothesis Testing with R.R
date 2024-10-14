data = read.delim("clipboard")
data
attach(data)
data1 = t.test(data, mu = 25, alternative = "greater")
data1



library(BSDA)
library(MASS)
library(datasets)
data.2 = read.delim("clipboard")
data.2
attach(data.2)
mean(Kelahiran)
sd(Kelahiran)
data2 = zsum.test(mean.x=mean(Kelahiran), sigma.x=sd(Kelahiran),
                  n.x=length(Kelahiran),
                  alternative = "less", mu=33.5, 
                  conf.level = 0.95)
data2

#saling bebas
data.3 = read.delim("clipboard")
data.3
data3 = t.test(Rasa.durian ~ Pendidikan, data.3, var.equal =TRUE)
data3

#berpasangan
data.4 = read.delim("clipboard")
data.4
attach(data.4)
data4= t.test(Sebelum, Sesudah, data = data.4, paired = TRUE)
data4