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
#paste(title, collapse = " ")
#

rm(pcmag,mag1,title)