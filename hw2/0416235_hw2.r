### set dir 
setwd("C:/Users/user/Desktop/ds")

### read file
protein = read.csv("nuclear.csv", header = T)

### install pkg 
install.packages("ggplot2")
library(ggplot2)

### select data by class
control <- subset(protein, class=="c-CS-m" | class=="c-CS-s" | class=="c-SC-m" | class=="c-SC-s")
tri <- subset(protein, class=="t-CS-m" | class=="t-CS-s" | class=="t-SC-m" | class=="t-SC-s")
tri_m <- subset(tri, class=="t-CS-m" | class=="t-SC-m")
tri_CS <- subset(protein, class=="t-CS-m" | class=="t-CS-s")
  
### draw the plot 
ggplot(data = control, aes(x = BRAF_N, y = SOD1_N, colour = class)) + geom_point()

ggplot(data = tri_m, aes(x = BRAF_N, y = SOD1_N, colour = class)) + geom_point()

ggplot(data = tri_CS, aes(x = BRAF_N, y = SOD1_N, colour = class)) + geom_point()