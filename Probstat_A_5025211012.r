# PRAKTIKUM MODUL 2 PROBSTAT
# Nama: Moh rosy haqqy aminy
# NRP: 5025211012

# SOAL 1
# 1.A
sebelum <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
sesudah <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

selisi <- sesudah - sebelum
selisi
sd(selisi)
# hasil : [1] 6.359595

# 1.B
# p value
t.test(sesudah, sebelum, alternative = "two.sided", paired = TRUE)
# hasil : [1] 6.003e-05

# 1.C
# H0 ditolak karena p value < 0.05


# SOAL 2
# 2.A
# Setuju, karena dengan rata-rata 23.5000 dari sampel
# acak dengan standar deviasi 3900 kilometer, maka
# sangatlah mungkin klaim tersebut valid. Hal itu
# karena grafik dari persebaran data distribusi normal
# yang dihasilkan akan lebih pekat di daerah lebih dari
# 20.000 kilometer dengan asumsi nilai tengah grafik tersebut
# adalah rata-rata dari sampel acak yang didapatkan.

# 2.B
install.packages("BSDA")
library(BSDA)
tsum.test(
    mean.x = 23500, s.x = 3900, n.x = 100, var.equal = TRUE,
    alternative = "two.sided"
)
# hasil : [1] 0.00000000000000022204

# 2.C
# H0 ditolak karena p value < 0.05

# SOAL 3
# 3.A
# H0: μ1 = μ2
# H1: μ1 ≠ μ2

# 3.B
library(BSDA)
tsum.test(
    mean.x = 3.64, s.x = 1.67, n.x = 19,
    mean.y = 2.79, s.y = 1.32, n.y = 27,
    alternative = "two.sided", var.equal = TRUE
)
# hasil : [1] 0.06049

# 3.C
install.packages("mosaic")
library(mosaic)
plotDist(dist = "t", df = 2, col = "green")

# 3.D
qt(p = 0.025, df = 44, lower.tail = TRUE)
qt(p = 0.025, df = 44, lower.tail = FALSE)
# hasil : [1] -2.01905 [1] 2.01905

# 3.E
# Diketahui α = 0.05 dan p-value dari 3B adalah 0.06049.
# Karena nilai p-value masih lebih besar maka H0 tidak dapat ditolak karena bukti belum cukup

# 3.F
# Karena yang berlaku H0, maka dapat disimpulkan tidak terdapat perbedaan
# signifikan antara rata-rata kota Bandung dan Bali

# SOAL 4
# 4.A
dataoneway <- read.table(
    url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"),
    h = T
)
attach(dataoneway)
names(dataoneway)
dataoneway$Group <- as.factor(dataoneway$Group)
dataoneway$Group <- factor(dataoneway$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(dataoneway$Group)

Group1 <- subset(dataoneway, Group == "Kucing Oren")
Group2 <- subset(dataoneway, Group == "Kucing Hitam")
Group3 <- subset(dataoneway, Group == "Kucing Putih")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)

# 4.B
bartlett.test(Length ~ Group, data = dataoneway)
# p value = 0.8054

# 4.C
model1 <- lm(Length ~ Group, data = dataoneway)
anova(model1)

# 4.D
# Didapat dari soal 4C p-value = 0.0013, karena 0.0013<0.05 (confidence interval) maka H0 dapat ditolak
# sehingga terbukti ada perbedaan panjang tetapi belum diketahui kucing mana yang memiliki perbedaan

# 4.E
TukeyHSD(aov(model1))

# 4.F
install.packages("ggplot2")
library("ggplot2")
ggplot(dataoneway, aes(x = Group, y = Length)) +
    geom_boxplot(fill = "grey80", colour = "black") +
    scale_x_discrete() +
    xlab("Treatment Group") +
    ylab("Length (cm)")


# SOAL 5
# 5.A
install.packages("multcompView")
library(multcompView)
library(readr)
library(dplyr)
library(ggplot2)
GTL <- read_csv("GTL.csv")
head(GTL)
str(GTL)
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(. ~ Glass, labeller = label_both)

# 5.B
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass * Temp_Factor, data = GTL)
summary(anova)

# 5.C
data_summary <- group_by(GTL, Glass, Temp) %>%
    summarise(mean = mean(Light), sd = sd(Light)) %>%
    arrange(desc(mean))
print(data_summary)

# 5.D
tukey <- TukeyHSD(anova)
print(tukey)

# 5.E
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")
