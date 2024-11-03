library(tidyverse)
library(cluster) #algoritma klastering
library(factoextra) #algoritma klastering dan visual
library(readxl)

datadaus=read_excel("C:/Users/HP/Documents/Kuliah Nuzula/Semester 3/Lab PSD/Nilai machine learning.xlsx")#firdausi
head(datadaus)

str(datadaus)
head(datadaus)
datafidaus1 = na.omit(datadaus) #menghilangkan missing data
summary(datafidaus1)
attach(datadaus)
max(UTS)

#standarisasi data
datafixdaus = scale(datafidaus1)
datafixdaus


head(datafixdaus)

#patahan siku untuk menunjukkan K terbaik
fviz_nbclust(datafixdaus, kmeans, method = "wss")

#Nilai tertinggi rata-ratanya untuk menentukan K terbaik
fviz_nbclust(datafixdaus, kmeans, method = "silhouette") 
set.seed(123)

gap_stat <- clusGap(datafixdaus, FUN = kmeans, nstart = 25,
                    K.max = 10, B = 100) 

fviz_gap_stat(gap_stat)



final <- kmeans(datafixdaus, 3, nstart = 34)
print(final)

fviz_cluster(final, data = datafixdaus)

datadaus %>%
  mutate(cluster = final$cluster) %>%
  group_by(cluster) %>%
  summarise_all("mean")
