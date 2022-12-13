### Praktikum 2 [ Probabilitas & Statistika ]
| Nama                      | NRP           |
|---------------------------|---------------|
|Moh rosy haqqy aminy       |5025211012     |

### Soal 1A 
> Carilah standar deviasi dari data selisih pasangan pengamatan tabel di atas.

**Penjelasan**   
mencari selisih dari antar data dengan index yang sama. Kemudian, dilakukan pencarian standar deviasi

**Kode Program**  
```R
# 1.A
sebelum <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
sesudah <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
selisi <- sesudah - sebelum
selisi
sd(selisi)
# hasil : [1] 6.359595
``` 
**Screenshot**  
![Screenshot 2022-12-10 155811](https://user-images.githubusercontent.com/86828535/206841840-8ce0a4a4-3adf-49aa-b1c1-6f5884ee9dfd.png)


### Soal 1B 
>Carilah nilai t (p-value).


**Penjelasan**   
menggunakan fungsi t.test()

**Kode Program**  
```R
# 1.B
# p value
t.test(sesudah, sebelum, alternative = "two.sided", paired = TRUE)
# hasil : [1] 6.003e-05
``` 
**Screenshot**  
![Screenshot 2022-12-10 160034](https://user-images.githubusercontent.com/86828535/206841922-69f9d061-27fd-49ab-bcac-00e90f2d3c35.png)


### Soal 1C 
>Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

**Penjelasan**   
H0 ditolak karena p value < 0.05
berarti terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 pada tingkat signifikansi 5%.

**Kode Program**  
```R
# 1.C
# H0 ditolak karena p value < 0.05
``` 


### Soal 2A
>Apakah Anda setuju dengan klaim tersebut?

**Penjelasan**   
Setuju, karena dengan rata-rata 23.5000 dari sampel acak dengan standar deviasi 3900 kilometer, maka  mungkin klaim tersebut valid. 

**Kode Program**  
```R
# 2.A
# Setuju, karena dengan rata-rata 23.5000 dari sampel
# acak dengan standar deviasi 3900 kilometer, maka
# sangatlah mungkin klaim tersebut valid. 
``` 
 

### Soal 2B
>Jelaskan maksud dari output yang dihasilkan!


**Penjelasan**   
menggunakan fungsi tsum.test()

**Kode Program**  
```R
# 2.B
install.packages("BSDA")
library(BSDA)
tsum.test(
    mean.x = 23500, s.x = 3900, n.x = 100, var.equal = TRUE,
    alternative = "two.sided"
)
# hasil : [1] 0.00000000000000022204
``` 
**Screenshot**  
![Screenshot 2022-12-10 160433](https://user-images.githubusercontent.com/86828535/206842100-0915d12f-25e4-4803-b1d3-efb6268f74b2.png)


### Soal 2C
>Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

**Penjelasan**   
H0 ditolak karena p value < 0.05
berarti mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.

**Kode Program**  
```R
# 2.C
# H0 ditolak karena p value < 0.05
``` 


### Soal 3A 
>H0 dan H1

**Penjelasan**   
H0: μ1 = μ2 (rata-rata saham di Bandung sama dengan di Bali)

H1: μ1 ≠ μ2 (rata-rata saham di Bandung tidak sama dengan di Bali)

**Kode Program**  
```R
# 3.A
# H0: μ1 = μ2
# H1: μ1 ≠ μ2
``` 


### Soal 3B 
>Hitung sampel statistik 

**Penjelasan**   
menggunakan fungsi tsum.test() dan mengunakan two sided karena two tail

**Kode Program**  
```R
# 3.B
library(BSDA)
tsum.test(
    mean.x = 3.64, s.x = 1.67, n.x = 19,
    mean.y = 2.79, s.y = 1.32, n.y = 27,
    alternative = "two.sided", var.equal = TRUE
)
# hasil : [1] 0.06049
``` 
**Screenshot**  
![Screenshot 2022-12-10 160842](https://user-images.githubusercontent.com/86828535/206842236-8ba3b5c5-6610-4cd0-b49b-a4f112cfbd8a.png)


### Soal 3C
>Lakukan uji statistik (df =2) 

**Penjelasan**   
menggunakan fungsi plotDist() untuk mendapatkan gambaran atau visualisasi dari statistik dengan derajat bebas sebesar 2

**Kode Program**  
```R
# 3.C
install.packages("mosaic")
library(mosaic)
plotDist(dist = "t", df = 2, col = "green")
``` 
**Screenshot**  
![Rplot01](https://user-images.githubusercontent.com/86828535/206842281-60a73a23-1f83-4598-967c-bb219c81253f.png)



### Soal 3D
>Nilai Kritikal

**Penjelasan**   
menggunakan fungsi qt()


**Kode Program**  
```R
# 3.D
qt(p = 0.025, df = 44, lower.tail = TRUE)
qt(p = 0.025, df = 44, lower.tail = FALSE)
# hasil : [1] -2.01905 [1] 2.01905
``` 
**Screenshot**  
![Screenshot 2022-12-13 155034](https://user-images.githubusercontent.com/86828535/207267689-e5818ffc-de2c-4608-b523-58f871e8fca4.png)



### Soal 3E
>Keputusan 

**Penjelasan**   
Diketahui α = 0.05 dan p-value dari 3B adalah 0.06049.
Karena nilai p-value masih lebih besar maka H0 tidak dapat ditolak karena bukti belum cukup

**Kode Program**  
```R
# 3.E
# Diketahui α = 0.05 dan p-value dari 3B adalah 0.06049.
# Karena nilai p-value masih lebih besar maka H0 tidak dapat ditolak karena bukti belum cukup
``` 


### Soal 3F 
>Kesimpulan

**Penjelasan**   
Karena yang berlaku H0, maka dapat disimpulkan tidak terdapat perbedaan signifikan antara rata-rata kota Bandung dan Bali

**Kode Program**  
```R
# 3.F
# Karena yang berlaku H0, maka dapat disimpulkan tidak terdapat perbedaan
# signifikan antara rata-rata kota Bandung dan Bali
```  


### Soal 4A
> Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians. 

**Penjelasan**   
ambil data dari https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt  lalu  lakukan grouping sesuai dengan label yang telah ditentukan sekaligus melakukan pengecekan value dalam grup yang dihasilkan.lalu membagi tiap valuer menjadi 3 bagian sesuai dengan label grup yang telah dibuat. terakhir menggambar plot kuantil normal untuk setiap grup untuk melihat distribusi data dan outlier utama dalam homogenitas varians pada masing-masing grup.



**Kode Program**  
```R
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
``` 

**Kode Program1**  
```R
qqnorm(Group1$Length)
qqline(Group1$Length)
``` 
**Screenshot1**  
![Rplot](https://user-images.githubusercontent.com/86828535/206842629-a62e7b7c-2b14-46b7-a6e0-1271a044a41f.png)



**Kode Program2**  
```R
qqnorm(Group2$Length)
qqline(Group2$Length)
``` 
**Screenshot2**  
![Rplot02](https://user-images.githubusercontent.com/86828535/206842644-e54a39c3-80aa-43aa-9d8c-8c26b976a31c.png)



**Kode Program3**  
```R
qqnorm(Group3$Length)
qqline(Group3$Length)
``` 
**Screenshot3**  
![Rplot03](https://user-images.githubusercontent.com/86828535/206842650-f3e09b16-ea39-42ad-a80e-a10ee07c8686.png)


### Soal 4B
>Carilah atau periksalah homogeneity of variances-nya. Berapa nilai p yang didapatkan? Apa hipotesis dan kesimpulan yang dapat diambil?

**Penjelasan**   
menggunakan fungsi bartlett.test()

**Kode Program**  
```R
# 4.B
bartlett.test(Length ~ Group, data = dataoneway)
# p value = 0.8054
``` 
**Screenshot**  
![Screenshot 2022-12-10 162515](https://user-images.githubusercontent.com/86828535/206842820-69a44ce8-9177-4747-a9da-136acedc6579.png)




### Soal 4C
>Untuk uji ANOVA (satu arah), buatlah model linier dengan panjang versus grup dan beri nama model tersebut model 1.

**Penjelasan**   
menggunakan fungsi yaitu fungsi lm() dan anova()

**Kode Program**  
```R
# 4.C
model1 <- lm(Length ~ Group, data = dataoneway)
anova(model1)
``` 
**Screenshot**  
![Screenshot 2022-12-10 162705](https://user-images.githubusercontent.com/86828535/206842883-1da6b745-84e3-4266-b00f-2ed0cd1e6bfb.png)





### Soal 4D
>Dari hasil poin C, berapakah nilai p? Apa yang dapat Anda simpulkan dari H0?

**Penjelasan**   
Didapat p-value = 0.0013, karena 0.0013<0.05 (confidence interval) maka H0 dapat ditolak sehingga terbukti ada perbedaan panjang tetapi belum diketahui kucing mana yang memiliki perbedaan

**Kode Program**  
```R
# 4.D
# Didapat dari soal 4C p-value = 0.0013, karena 0.0013<0.05 (confidence interval) maka H0 dapat ditolak
# sehingga terbukti ada perbedaan panjang tetapi belum diketahui kucing mana yang memiliki perbedaan
``` 


### Soal 4E 
>Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

**Penjelasan**   
menggunakan TukeyHSD()

**Kode Program**  
```R
# 4.E
TukeyHSD(aov(model1))
``` 
**Screenshot**  
![Screenshot 2022-12-10 162914](https://user-images.githubusercontent.com/86828535/206842951-ae74b881-90bf-4b6a-9ffb-cbc6db6faed3.png)


### Soal 4F
>Visualisasikan data dengan ggplot2 

**Penjelasan**   
menggunakan ggplot()

**Kode Program**  
```R
# 4.F
install.packages("ggplot2")
library("ggplot2")
ggplot(dataoneway, aes(x = Group, y = Length)) +
    geom_boxplot(fill = "grey80", colour = "black") +
    scale_x_discrete() +
    xlab("Treatment Group") +
    ylab("Length (cm)")
``` 
**Screenshot** 
![Rplot04](https://user-images.githubusercontent.com/86828535/206843007-9af694ed-5bfa-4138-8de7-c08fc9f27714.png)



### Soal 5A 
>Buatlah plot sederhana untuk visualisasi data  

**Penjelasan**   
masukkan data set GTL.csv(jangan lupa taruh di working directory).lalu lakukan observasi pada dataset.selanjutnya lakukan viasualisasi

**Kode Program**  
```R
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
``` 
**Screenshot**  
![Rplot05](https://user-images.githubusercontent.com/86828535/206850812-7b9ca5aa-4df1-4cb7-b92e-5a842c23ba41.png)





### Soal 5B
>Lakukan uji ANOVA dua arah 

**Penjelasan**   
lakukan analisis of variance (AoV) dengan fungsi summary(aov()).

**Kode Program**  
```R
# 5.B
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)
anova <- aov(Light ~ Glass * Temp_Factor, data = GTL)
summary(anova)
``` 
**Screenshot**  
![Screenshot 2022-12-10 174910](https://user-images.githubusercontent.com/86828535/206850942-619cff87-f493-458e-9bb5-eee9935015cf.png)



### Soal 5C
>Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)  

**Penjelasan**   
menggunakan fungsi group_by() dan summarise()

**Kode Program**  
```R
# 5.C
data_summary <- group_by(GTL, Glass, Temp) %>%
    summarise(mean = mean(Light), sd = sd(Light)) %>%
    arrange(desc(mean))
print(data_summary)
``` 
**Screenshot**  

![Screenshot 2022-12-10 181845](https://user-images.githubusercontent.com/86828535/206852010-94ca208f-1e49-4748-b34d-1f45b1783127.png)

### Soal 5D 
>Lakukan uji Tukey  

**Penjelasan**   
menggunakan fungsi TukeyHSD()


**Kode Program**  
```R
# 5.D
tukey <- TukeyHSD(anova)
print(tukey)
``` 
**Screenshot**  
![Screenshot 2022-12-10 182001](https://user-images.githubusercontent.com/86828535/206852059-c2e2dbc0-cd70-4792-b2c1-6098f838dd5f.png)



### Soal 5E
>Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey

**Penjelasan**   
membuat compact letter display dengan fungsi multcompLetterS4() lalu tambahkan ke tabel dengan mean dan standar deviasi yang telah dibuat sebelumnya.

**Kode Program**  
```R
# 5.E
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)
``` 
**Screenshot**  

![Screenshot 2022-12-10 182045](https://user-images.githubusercontent.com/86828535/206852085-aec6c1ad-ae03-48be-af02-d1e995160023.png)

-------
<p align="center"> 
  NO ROYAL ROAD IN GEOMETRY
</p>
