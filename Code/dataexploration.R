library("memisc")
library("ggplot2")
library("qqplotr")

#setwd("/Users/Admin/Desktop/workspace/data")
setwd("~/Documents/GitHub/DA8120/data")

dataset <- data.frame(as.data.set(spss.system.file("marital status and smoking.sav")))


summary(dataset)

boxplot(dataset$cigage)
hist(dataset$cigage)
plot(dataset$cigage, dataset$cigyrs)

ggplot(mapping = aes(sample = dataset$cigage)) + stat_qq_point(size = 2,color = "red") + stat_qq_line(color="green")  + xlab("x-axis") + ylab("y-axis")

stem(dataset$cigyrs)

