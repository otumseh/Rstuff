#Author = Andrew Muto
#Purpose = Web scraper

library(rvest)
library(xml2)
library(dplyr)
library(ggmap)
library(leaflet)
library(RColorBrewer)

vignette(rvest)
??rvest

#works of 1-20-17  
weather <- read_html("http://forecast.weather.gov/MapClick.php?textField1=43.86&textField2=-83.96")
location <- html_nodes(weather, "#current-conditions .panel-title")
temp <- html_nodes(weather, ".myforecast-current-lrg")
temp2 <- html_nodes(weather, ".myforecast-current-sm")
con <- html_nodes(weather, ".myforecast-current")
place <- html_text(location)
localtemp <- html_text(temp)
cels <- html_text(temp2)
conditions <- html_text(con)
place
localtemp
cels
conditions
paste(place,localtemp,cels,conditions, collapse = " ")

rm(weather,location,temp,temp2,con,place,localtemp,cels,conditions)
#