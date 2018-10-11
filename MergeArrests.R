

arrests <-USArrests
arrests<- cbind(rownames(arrests),arrests)
colnames(arrests)= c("StateName")
arrests
merge_data <- merge(arrests,MergeCensus)
colnames(merge_data) <- c("StateName","Murder","Assault","UrbanPop","Rape","Population","popOver18","PercentOver18")

merge_data
