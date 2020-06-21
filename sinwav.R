#Author = Andrew Muto
#plays a tone

library(tuneR)

setwd("C:/Users/Mr. Swanson Broth/Desktop/R")
t = seq(0,3,1/8000)
u = (2^15-1)*sin(2*pi*440*t)
w = Wave(u, samp.rate = 8000, bit=16)
play(w)

