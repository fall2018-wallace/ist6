
library(maps)
library(ggplot2)

stateName<- state.name #Reading in the inbuild dataset state.name
area<- state.area #Reading in the inbuilt dataset state.area
center<- state.center #Reading in the inbuilt datadrame state.center
dataframe<- data.frame(stateName,area,center) #Creates a dataframe of the three variables 
dataframe 
mergedDF<- merge(mergedDataframe1, dataframe, by='stateName') #Merges the dataframes MergedDataframes and Dataframe
View(mergedDF)
