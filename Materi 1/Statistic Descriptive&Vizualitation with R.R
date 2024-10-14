# Analisis Data Eksploratif
library(ggplot2)


#pemanggilan data
df = read.csv("C:/Users/HP/Documents/Kuliah Nuzula/Semester 5/Aslab PSD/Data Diabetes.csv", sep = ';')
df
attach(df)

#melihat struktur data
str(df)

#melihat summary data 
summary(df)

summary(Pregnancies)

#boxplot
boxplot(Glucose)

ggplot(df, aes(y = Glucose)) +
  geom_boxplot(fill = 'skyblue') +
  labs(title = "Boxplot Glucose", y = "Glucose") +
  theme_minimal(base_size = 15)


#histogram
hist(Age)


ggplot(df, aes(x = Age)) +
  geom_histogram(bins = 10, fill = 'cadetblue', color = 'black') +
  labs(title = "Distribusi Age", x = "Age", y = "Frekuensi") +
  theme_minimal(base_size = 15)


#bar chart



ggplot(df, aes(x = factor(Outcome))) +
  geom_bar(fill = 'steelblue', color = 'black') +
  labs(title = 'Distribusi Kasus', x = 'Kasus', y = 'Jumlah') +
  theme_minimal(base_size = 20)

# Menampilkan nilai-nilai unik dan jumlahnya
table(df$Outcome)


# stem

stem(Glucose)


#scatter plot

ggplot(df, aes(x = Glucose, y = Age)) +
  geom_point(color = 'cadetblue') +
  labs(title = "Scatterplot Glucose vs Age", x = "Glucose", y = "Age") +
  theme_minimal(base_size = 15)

plot(Glucose, Age)

# pie

att_count <- as.data.frame(table(df$Outcome))
colnames(att_count) <- c("Outcome", "Counts")

# Membuat diagram pie
pie(att_count$Counts, labels = paste(att_count$Outcome, 
                                     "\n", 
                                     round(att_count$Counts / sum(att_count$Counts) * 100, 1), "%"), 
    col = rainbow(length(att_count$Outcome)), 
    main = "Persentase Kasus")


pie(att_count$Counts)