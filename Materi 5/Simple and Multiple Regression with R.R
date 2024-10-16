library(readxl)
library(lmtest)
library(nortest)
library(DescTools)
library(tseries)
#Regresi Sederhana
#Uji Asumsi
#Normalitas
data = read_excel("C:/Users/HP/Documents/Kuliah Nuzula/Semester 3/Lab PSD/Data lab 5 psd.xlsx")musliadi
datamusliadi
modell = lm (IPM ~ MYS, data = data)musliadi
modellmusliadi
#Uji Asumsi
#Normalitas
res <- modell$residualsmusliadi
jarque.bera.test(x = res)musliadi

#galat berdistribusi normal karena pvalue > 0.05

#Homoskedastisitas
bptest(modell)musliadi
#galat homogen karena pvalue > 0.05

#Autokorelasi
dwtest(modell)musliadi
#Terdapat autokorelasi karena nilai pvalue = 0.01458

#uji serempak, parsial, koefisien determinasi
summary (model)musliadi

#Regresi Berganda

data1 = read_excel("C:/Users/HP/Documents/Kuliah Nuzula/Semester 3/Lab PSD/Data lab 5 psd.xlsx")musliadi
data1musliadi

modell = lm(IPM ~ EYS + MYS, data= data)musliadi
modellmusliadi
summary(modell)musliadi
#Uji Asumsi
#Normalitas
res <- modell$residualsmusliadi
jarque.bera.test(x = res)musliadi

#galat berdistribusi normal karena pvalue > 0.05

#Homoskedastisitas
bptest(modell)musliadi
#galat homogen karena pvalue > 0.05

#Autokorelasi
dwtest(modell)musliadi
#Terdapat autokorelasi karena nilai pvalue = 0.01458

#Multikolnearitas
VIF(modell)musliadi
#tidak terdapat multikolinearitas karena nilai VIF > 2

#uji parsial, serempak dan koefisien determinasi
summary(modell)musliadi