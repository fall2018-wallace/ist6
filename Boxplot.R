
library(ggplot2)
options(scipen=999)
f <- ggplot(mergedDataframe,aes(x=factor(0),y=population))+geom_boxplot()

g <-ggplot(mergedDataframe,aes(x=factor(0),y=Murder))+geom_boxplot()
