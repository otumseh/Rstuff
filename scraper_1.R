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

# Works of 1-20-17
pcmag <- read_html("http://www.pcgamer.com/news/")
mag1 <- html_nodes(pcmag, ".article-name")
title <- html_text(mag1)
title
#paste() and collapse turns the data into a paragraph form
paste(title, collapse = " ")
#

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

rm(place,localtemp,temp,weather,location,conditions,con,cels,temp2)
#

#hmmm
html1 <- read_html("http://www.ssi-mi.com/")
contactInfo <- html_nodes(html1, "center")
peeps1 < - html_text(contactInfo)
peeps1
paste(peeps1, collapse = " ")
#

rm(html1,headline,pcmag,wine,selector_name,contactInfo,title,mag1,weather,temp,localtemp,peeps1)

quit