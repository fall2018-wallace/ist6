
library(maps)
library(ggplot2)
options(scipen=999)
#Step B: Generate a color coded map
#3)	Create a color coded map, based on the area of the state 

mergedDataFrame1$stateName= tolower(mergedDataFrame1$stateName) #ggplot wants all the statenames to be in lower case thus we used the tolower command.

us<-map_data("state") #We get the map of USA with the following line of code
map.simple<- ggplot(mergedDataFrame1, aes(map_id=stateName)) 
map.simple<- map.simple + geom_map(map=us, fill="white",color="black") #With geom_map() function, We tell ggplot the map to use and simply fill each state white with black outlines
map.simple<- map.simple +expand_limits(x= us$long, y= us$lat) #We expand the limits based on longitudes and latitudes for the united states
map <- map.simple
map.simple<-map.simple +coord_map()+ ggtitle("Map of USA") #We use this function to keep the map from being distorted or stretched

mergedDataFrame1$stateName= tolower(mergedDataFrame1$stateName) #ggplot wants all the statenames to be in lower case thus we used the tolower command.



map.Murder<- ggplot(mergedDataFrame1, aes(map_id=stateName))
map.Murder<- map.Murder + geom_map(map=us,aes( fill=mergedDataFrame1$Murder))
map.Murder<- map.Murder +expand_limits(x= us$long, y= us$lat)
map.Murder<-map.Murder +coord_map()+ ggtitle("Murder Rate of USA")
murdermap <- map.Murder

map.point<- ggplot(mergedDataFrame1, aes(map_id=stateName))
map.point<- map.point + geom_map(map=us,aes( fill=area))
map.point<- map.point +expand_limits(x= us$long, y= us$lat)
map.point<- map.point + geom_point(aes(x = x, y = y, size=population))
map.point<-map.point +coord_map()+ ggtitle("Population per state")
population <- map.point



# 6)   Repeat step C, but only show the states in the north east

# Hint: get the lat and lon of new york city

# Hint: set the xlim and ylim to NYC +/- 10
library(maps)
library(ggplot2)
library(ggmap)
options(scipen=999)

latlon <- geocode(source = "dsk","nyc, new york, ny")
latlon
#mapzoom<- ggplot(mergedDataFrame1, aes(map_id=stateName))
#mapzoom <- mapzoom + xlim(latlon$lon-10,latlon$lon+10) + ylim(latlon$lat-10, latlon$lat+10)
#mapzoom <- mapzoom + coord_map() 
#zoomedmap <-mapzoom
