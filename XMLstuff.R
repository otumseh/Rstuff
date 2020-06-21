##XML stuff


install.packages("XML")
install.packages("plyr")
install.packages("ggplot2")
install.packages("gridExtra")

require("XML")
require("plyr")
require("ggplot2")
require("gridExtra")

xmlfile <- xmlParse(file.choose())

class(xmlfile)
str(xmlfile)

xmltop <- xmlRoot(xmlfile)
xmltop
class(xmltop)
xmlName(xmltop)
xmlSize(xmltop)
xmlName(xmltop[[1]])
xmlName(xmltop[[2]])

rm(xmlfile,xmltop)

