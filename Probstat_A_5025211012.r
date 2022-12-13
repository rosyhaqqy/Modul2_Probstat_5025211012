# PRAKTIKUM MODUL 1 PROBSTAT
# Nama: Moh rosy haqqy aminy
# NRP: 5025211012

# SOAL 1
# 1.A
x <- 3
p <- 0.2
dgeom(x, p)
# hasil : [1] 0.1024

# 1.B
data <- 10000
p <- 0.2
x <- 3
mean((rgeom(data, p) == x))
# hasil : [1] 0.1054

# 1.C
# Pada poin a nilainya statis/tetap. sedangkan Pada poin b nilainya dinamis,
# tetapi mendekati nilai A.
# Sehingga dapat ditarik kesimpulan bahwa
# b menggunakan fungsi random, maka tentu hasilnya berbeda beda
# tetapi nilai poin b selalu mendekati poin a

# 1.D
data <- 10000
p <- 0.2
hist(rgeom(data, p), main = "Distribusi Geometrik Peluang X = 3 gagal sebelum sukses pertama")

# 1.E
p <- 0.2
q <- 1 - p
mean <- 1 / p
variance <- (q / (p^2))
mean
variance
# hasil : [1] 5
# hasil : [1] 20

# SOAL 2
# 2.A
n <- 20
x <- 4
p <- 0.2
dbinom(x, n, p)
# hasil : [1]  0.2181994

# 2.B
x <- 10000
n <- 20
p <- 0.2
y <- rbinom(x, n, p)
hist(y, main = "Grafik Histogram Distribusi Binomial")

# 2.C
p <- 0.2
q <- 1 - p
n <- 20
mean <- n * p
variance <- n * p * q
mean
variance
# hasil : [1] 4
# hasil : [1] 3.2

# SOAL 3
# 3.A
lambda <- 4.5
x <- 6
dpois(x, lambda)
# hasil : [1] 0.1281201

# 3.B
lambda <- 4.5
n <- 365
hist(rpois(n, lambda), main = "Grafik histogram distribusi poisson kelahiran 6 bayi selama 1 tahun")
a <- (rpois(n, lambda) == 6)
mean(a)
# hasil : [1] 0.1260274

# 3.C
# Pada poin a nilainya statis. Pada poin b nilainya dinamis,
# tetapi mendekati nilai a.

# 3.D
lambda <- 4.5
mean <- lambda
variance <- mean
mean
variance
# hasil : [1] 4.5
# hasil : [1] 4.5

# SOAL 4
# 4.A
x <- 2
v <- 10
dchisq(x, df = v)
# hasil : [1] 0.007664155

# 4.B
n <- 100
v <- 10
hist(rchisq(n, df = v), main = "Grafik Histogram Distribusi Chi-Square pada 100 Random Data")

# 4.C
v <- 10
mean <- v
variance <- v * 2
mean
variance
# hasil : [1] 10
# hasil : [1] 20

# SOAL 5
# 5.A
lambda <- 3
dexp(1, rate = lambda)
# hasil : [1] 0.1493612

# 5.B
lambda <- 3
set.seed(1)
n_10 <- 10
hist(rexp(n_10, rate = lambda), main = "Histogram Distribusi Exponensial 10 Angka Acak")

set.seed(1)
n_100 <- 100
hist(rexp(n_100, rate = lambda), main = "Histogram Distribusi Exponensial 100 Angka Acak")

set.seed(1)
n_1000 <- 1000
hist(rexp(n_1000, rate = lambda), main = "Histogram Distribusi Exponensial 1000 Angka Acak")

set.seed(1)
n_10000 <- 10000
hist(rexp(n_10000, rate = lambda), main = "Histogram Distribusi Exponensial 10000 Angka Acak")

# 5.C
lambda <- 3
n <- 100
set.seed(1)
mean <- mean(rexp(n, rate = lambda))
variance <- (sd(rexp(n, rate = lambda)))^2
mean
variance
# hasil : [1] 0.3435588
# hasil : [1] 0.06560765

# SOAL 6
# 6.A
n <- 100
mean <- 50
sd <- 8
data <- rnorm(n, mean, sd)
rata <- mean(data)
x1 <- floor(rata)
x2 <- ceiling(rata)
x1
x2
rata
z <- (data - rata) / sd(data)
plot(z, main = "Grafik Z-Score")

# Soal 6B
n <- 100
mean <- 50
sd <- 8
data <- rnorm(n, mean, sd)
hist(data, 50, main = "5025211012_Moh Rosy Haqqy Aminy_Probstat_A_DNhistogram ")

# Soal 6C
n <- 100
mean <- 50
sd <- 8
data <- rnorm(n, mean, sd)
sdd <- sd(data)
variance <- sdd * sdd
variance
