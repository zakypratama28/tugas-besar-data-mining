#set direktori
lokasi_kerja <- "E:/tb data mining"
setwd("E:/tb data mining")
getwd()
#instal paket
install.packages("factoextra")
install.packages("cluster")
install.packages("magrittr")
library("factoextra")
library("cluster")
library("magrittr")
#mencari data dari csv
dataset <- read.csv("perfume_data.csv", sep = ";")
View(dataset)
#data di scaling lalu di cluster
res.hc <- dataset[2:3] %>% scale() %>% dist(method = "euclidean") %>% hclust(method = "ward.D2")
#melihat model yang telah di bangun
res.hc
head(res.hc)
#visualisasi menggunakan fviz_dend
fviz_dend(res.hc, k = 3,
          cex = 0.5, 
          k_colors = c("#2E9FDF", "#FC4E07", "#00AFBB"),
          color_labels_by_k = TRUE,
          rect = TRUE)
#mengetahui infomasi mengenai fviz_dend
?fviz_dend
View(dataset)
