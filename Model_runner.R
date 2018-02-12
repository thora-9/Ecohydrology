require('date')
require('lubridate')
source('myrain.R')
source('myPET.R')

#Global parameters
years=10
start_year=1995

#Rainfall parameters
alpha=10 #mean rainfall on days with rainfall (units mm)
lambda=0.6 #Controls the difference between rainfall events
#Generate rainfall as a Poisson Distribution
rain1=myrain(years,alpha,lambda)

#PET parameters
PET_min=0.5 #0.5mm
beta=-6 #Tweaked to give an annual PET between 600-1600mm 
pet1=myPET(start_year,years,PET_min,beta)

#Soil Parameter Sets 

#Sandy Soil
Ksat=15.20 #m/day
psi_s=0.12 #m
sfc=0.44
sw=0.17
n=0.4
b=4.05
sy=0.22
yc_up=-0.45
yc_wet=-0.30

#Other constants
zcl=-2 #Confining layer only 2m deep
zwb=-1.25 #The bed of the wetland is 1.25m deep

RD=0.4 #Rooting depth value

