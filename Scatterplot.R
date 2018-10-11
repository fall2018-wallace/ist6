

library(ggplot2)
options(scipen=999)
ggplot(mergedDataframe,aes(x=population,y=percentOver18)) + geom_point(aes(size=Murder,color=Murder))
