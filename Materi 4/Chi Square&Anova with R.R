#PRAKTIKUM 4 PENGANTAR SAINS DATA


#ANOVA

library(easyanova)
anova= read.delim("clipboard")
anova
anovaa = aov(anova$Y ~ anova$X)
summary(anovaa)

#CHIS SQUARE

chi2 = read.delim("clipboard")
chi2
attach(chi2)
tabel = table(Pengetahuan, Sikap)
tabel
chisq.test(tabel)