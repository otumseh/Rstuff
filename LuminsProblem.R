###Lumins

#max distance needed from source is a triangle
#using feet

#a = the distance from the grond to the light 
#b = the distance from the ground below the light to the maximum target
#c = the distance needed from the light source to the maximum target

a <- 12
b <- 30
c <- a^2 + b^2

distanceneeded <- sqrt(c)
distanceneeded

## meters conversion feet / 3.28 = meters 
distmeter <- distanceneeded / 3.28 
distmeter

###inverse square law 
## B = L/4pid^2
## L = lumens
## d = distnance in meters

## B = lumens resulting upon target distance
L <- 2000000
B <- L/(4*pi*distmeter^2)
B

# maths check just put in numbers 
B <- 2000000/(4*pi*9.85^2)
B  

rm(B,L,distmeter,distanceneeded,a,b,c)
