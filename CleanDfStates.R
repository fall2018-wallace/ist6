

dfStates1 <- dfStates[ , -1:-4] #We use this format to delete the first 4 columns in the dataset which we have.
colnames(dfStates1)[colnames(dfStates1)=="NAME"] <- "stateName" 
dfStates1 #We use the colnames() function below to change the names of the columns.

NewFunc <- function()
{
  return(dfStates1)
}

NewFunc()
dfStates1
