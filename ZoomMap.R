
# 6)   Repeat step C, but only show the states in the north east

# Hint: get the lat and lon of new york city

# Hint: set the xlim and ylim to NYC +/- 10
library(maps)
library(ggplot2)
library(ggmap)
options(scipen=999)

latlon <- geocode(source = "dsk","nyc, new york, ny")

latlon
