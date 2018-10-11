
mergedDataframe <- merge(dfStates1,ArrestData)
View(mergedDataframe)
colnames(mergedDataframe)=c("stateName","population","popOver18","percentOver18","Murder","Assault","UrbanPop","Rape")
mergedDataframe
