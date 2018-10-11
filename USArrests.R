
ArrestData <- USArrests #Copied the USArrests data set into a local variable
ArrestData
ArrestData <- cbind(rownames(ArrestData),ArrestData)
colnames(ArrestData) <- c("stateName") 
ArrestData
