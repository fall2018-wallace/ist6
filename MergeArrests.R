
MergeCensus <- cleanCensus

arrests <-USArrests
arrests<- cbind(rownames(arrests),arrests)
colnames(arrests)= c("StateName")
arrests
merge_data <- merge(arrests,MergeCensus)
