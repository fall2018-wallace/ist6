
# 6)   Repeat step C, but only show the states in the north east

# Hint: get the lat and lon of new york city

# Hint: set the xlim and ylim to NYC +/- 10
library(maps)
library(ggplot2)
library(ggmap)
options(scipen=999)

latlon <- geocode(source = "dsk","nyc, new york, ny")

latlon

mapZoom <- mapZoom + xlim(latlon$lon-10,latlon$lon+10) + ylim(latlon$lat-10, latlon$lat+10)

mapZoom <- mapZoom + coord_map() 
