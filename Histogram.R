

library(ggplot2)
options(scipen=999)

a <- ggplot(mergedDataframe,aes(x=population))+geom_histogram(bins = 60, color = "red", fill = "red")+ggtitle("Population Histogram")

b <- ggplot(mergedDataframe,aes(x=Murder))+geom_histogram(bins = 60, color = "blue", fill = "blue")+ggtitle("Murder Histogram")

c <-ggplot(mergedDataframe,aes(x=Assault))+geom_histogram(bins = 60, color = "green", fill = "green")+ggtitle("Assault Histogram")

d <- ggplot(mergedDataframe,aes(x=UrbanPop))+geom_histogram(bins = 60, color = "yellow", fill = "yellow")+ggtitle("Urban Population Histogram")

e <- ggplot(mergedDataframe,aes(x=Rape))+geom_histogram(bins = 60, color = "pink", fill = "pink")+ggtitle("Rape Histogram")
