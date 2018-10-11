

library(ggplot2)
options(scipen=999)

ggplot(mergedDataframe,aes(x=population))+geom_histogram(bins = 60, color = "red", fill = "red")+ggtitle("Population Histogram")

ggplot(mergedDataframe,aes(x=Murder))+geom_histogram(bins = 60, color = "blue", fill = "blue")+ggtitle("Murder Histogram")

ggplot(mergedDataframe,aes(x=Assault))+geom_histogram(bins = 60, color = "green", fill = "green")+ggtitle("Assault Histogram")

ggplot(mergedDataframe,aes(x=UrbanPop))+geom_histogram(bins = 60, color = "yellow", fill = "yellow")+ggtitle("Urban Population Histogram")

ggplot(mergedDataframe,aes(x=Rape))+geom_histogram(bins = 60, color = "pink", fill = "pink")+ggtitle("Rape Histogram")
