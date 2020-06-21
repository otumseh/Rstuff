#Author = Andrew Muto
#Purpose = to contain base set-up
#Purpose1 = To load and compare csv files.

#r installation package
require(installr)

#checks for updates to r
updateR()

#checks r version
version

#loads package in ()
library(datasets) 
library(compare)
library(sqldf)
library(dplyr)

#sets working directory(wd)
setwd("C:/Users/Mr. Swanson Broth/Desktop/R/WorkStuff/Newcsv/")

#file.choose opens a browse window to load a file
InlayData <- read.csv(file.choose(),header = FALSE,skip = 0,sep = ",")
partData <- read.csv(file.choose(),header = F,sep = ",")

#load csv by path
InlayData <- read.csv("C:/Users/Mr. Swanson Broth/Desktop/R/WorkStuff/Newcsv/inlay.csv",header = FALSE,sep = ",") 
partData <- read.csv("C:/Users/Mr. Swanson Broth/Desktop/R/WorkStuff/Newcsv/part.csv",header = FALSE,sep = ",")

#reads csv by name in wd
InlayData <- read.csv("inlay.csv",header = FALSE,sep = ",")

#shows the structure of the data named in ()
str(InlayData) 
str(partData)

#shows the column names of data in ()
colnames(InlayData)
colnames(partData)

#creates new column names
names(InlayData) = c("ID","Northing","Easting","Elev","Code","ConNum") 
names(partData) = c("ID","Northing","Easting","Elev","Code","ConNum")

#shows sixth column of the data
InlayData[,6]
partData[,6]

#shows data by naming column
InlayData[12,"Northing"]
#shows data rows 1 through 12 under ConNum(6) column
partData[1:12,"ConNum"]

#creates new data.frames
In1 <- data.frame(b1[,4:6])
In2 <- data.frame(InlayData[,5:6])

#anti isolates rows that are different between the datasets named in (1st,2nd)
#the data belonging to the first named set is stored in a1
a1 <- anti_join(partData,InlayData)
#semi combines all rows that have not changed
b1 <- semi_join(InlayData,partData) 

#compares csvs for equality
compareEqual(InlayData,partData)

#writes a csv to the wd
write.csv(InlayData,file = "exporttest2.csv")
write.csv(a1,file = "a1_antijoin3.csv")
write.csv(b1,file = "b1_semijoin.csv")

#writes a csv to the wd using [row ,column] selection
write.csv(partData[,6],file = "exporttest2.csv")

#removes dataset(s) in (,,,)
rm(a1,b1,InlayData,partData)
rm(a1)
rm(In1,In2,In3)

#quits r session
quit
