
mergedDataFrame1$stateName= tolower(mergedDataFrame1$stateName) #ggplot wants all the statenames to be in lower case thus we used the tolower command.

us<-map_data("state") #We get the map of USA with the following line of code
map.simple<- ggplot(mergedDataframe1, aes(map_id=stateName)) 
map.simple<- map.simple + geom_map(map=us, fill="white",color="black") #With geom_map() function, We tell ggplot the map to use and simply fill each state white with black outlines
map.simple<- map.simple +expand_limits(x= us$long, y= us$lat) #We expand the limits based on longitudes and latitudes for the united states
map.simple
map.simple<-map.simple +coord_map()+ ggtitle("Map of USA") #We use this function to keep the map from being distorted or stretched
