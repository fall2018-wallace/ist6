
MergeCensus <- cleanCensus

arrests <-USArrests
arrests<- cbind(rownames(arrests),arrests)
colnames(arrests)= c("StateName")
