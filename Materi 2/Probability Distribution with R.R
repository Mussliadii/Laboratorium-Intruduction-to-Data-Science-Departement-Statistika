#Distribusi Diskrit dan Kontinu
"Distribusi Diskrit"
options(scipen = 999, digits = 10)

#Distribusi Binomial
#No 1
#diketahui  x = 4, size atau n = 50 dan peluang suksesnya 0.3
dbinom(4, 50, 0.3 ) 
dbinom(0, 50, 0.3) 
# Peluang paling banyak 6 kredit akan macet
sum(dbinom(0:6, 50, 0.3))
pbinom(6, 50, 0.3)
#No 5
dpois(0, 4)
dpois(6, 4)
sum(dpois(0:3, 4))

#No 4
dbinom(10, size = 12, prob = 0.85)
sum(dbinom(8:12, 12, 0.85))
1 - pbinom(8, 12, 0.85)
sum(dbinom(7:9, 12, 0.95))


#No 4
pnorm(800, 1000, 120)

#No 5
# Parameter distribusi normal

pnorm(1050, 1000, 120) - pnorm(900, 1000, 120)
pnorm(50, 54, 5)*2000

install.packages("BSDA")
install.packages("MASS")
install.packages("dataset")


