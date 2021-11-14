#Intro
#This script generates maps of sample sites for each season of sampling, color coded to correspond to MP concentration.
#This script was developed with the help of Megan Lott

#Load Libraries
library(raster)
library(mapview)
library(tidyverse)
library(dplyr)
library(sf)
library(spatstat)
library(sp)
library(here)

#Load Data 
sitedata = readRDS(here("data", "processed_data", "athensland.rds"))

#First, we want to create a basemap of Athens-Clarke County, and include hydrology of the
#watershed if possible 

#Found shapefiles for hydrology on ACC Website here: https://data-athensclarke.opendata.arcgis.com/datasets/hydropoly?geometry=-83.511%2C33.912%2C-83.280%2C33.962
#acc_hydro = st_read("./acc_map/Hydropoly.shp")
#acc_hydro = st_transform(acc_hydro,CRS("+proj=longlat"))
#mapview(acc_hydro)  


## Seasonal Subsets
fall <- sitedata %>% filter(date == "nov_20")
winter <- sitedata %>% filter(date == "feb_21")
spring <- sitedata %>% filter(date == "apr_21")
summer <- sitedata %>% filter(date == "july_21")
     
## Fall 2020 Map
                         
#Save sites as a simple shapefile
sites_sf = na.omit(fall) %>% st_as_sf(coords = c('long', 'lat'))
st_crs(sites_sf) <- 4326
st_crs(sites_sf)
#Base Map
#view sites only
mapview(sites_sf, xcol = "long", ycol = "lat", zcol = "particles_l")

#GA Hydrology accessed from NHD USGS Database
#We only need to set ga_hydro once - from here on we just edit the samples sites by season
ga_hydro = st_read(here("data", "raw_data", "shape", "NHDFlowline.shp"))
sites_sf = st_as_sf(fall, coords = c('long', 'lat'))
st_crs(sites_sf) <- 4326
st_crs(ga_hydro) <- 4326
ga_hydro = st_transform(ga_hydro, crs = 4326)

#view hydrology map
mapview(ga_hydro)

#sites and hydrology
map_fall <- mapview(ga_hydro, layer.name = "Upper Oconee Watershed", color = "skyblue3", alpha = .7) + 
  mapview(sites_sf, zcol = "particles_l", legend = mapviewGetOption("legend"), layer.name = "Fall 2020 \nMicroplastics per L")
#save map
mapshot(map_fall, url = here("results", "map_fall.html"))

## Winter 2021

#Save sites as a simple shapefile
sites_sf = na.omit(winter) %>% st_as_sf(coords = c('long', 'lat'))
st_crs(sites_sf) <- 4326
st_crs(sites_sf)
#Base Map

#view sites only
mapview(sites_sf, xcol = "long", ycol = "lat", zcol = "particles_l")

#sites and hydrology
map_winter <- mapview(ga_hydro, layer.name = "Upper Oconee Watershed", color = "skyblue3", alpha = .7) + 
  mapview(sites_sf, zcol = "particles_l", legend = mapviewGetOption("legend"), layer.name = "Winter 2021 \nMicroplastics per L")
#save map
mapshot(map_winter, url = here("results", "map_winter.html"))

## Spring 2021
#Save sites as a simple shapefile
sites_sf = na.omit(spring) %>% st_as_sf(coords = c('long', 'lat'))
st_crs(sites_sf) <- 4326
st_crs(sites_sf)
#Base Map

#view sites only
mapview(sites_sf, xcol = "long", ycol = "lat", zcol = "particles_l")

#sites and hydrology
map_spring <- mapview(ga_hydro, layer.name = "Upper Oconee Watershed", color = "skyblue3", alpha = .7) + 
  mapview(sites_sf, zcol = "particles_l", legend = mapviewGetOption("legend"), layer.name = "Spring 2021 \nMicroplastics per L")
#save map
mapshot(map_spring, url = here("results", "map_spring.html"))

## Summer 2021
#Save sites as a simple shapefile
sites_sf = na.omit(summer) %>% st_as_sf(coords = c('long', 'lat'))
st_crs(sites_sf) <- 4326
st_crs(sites_sf)
#Base Map

#view sites only
mapview(sites_sf, xcol = "long", ycol = "lat", zcol = "particles_l")


#hydrology and sites map
map_summer <- mapview(ga_hydro, layer.name = "Upper Oconee Watershed", color = "skyblue3", alpha = .7) + 
  mapview(sites_sf, zcol = "particles_l", legend = mapviewGetOption("legend"), layer.name = "Summer 2021 \nMicroplastics per L")

#save map
mapshot(map_summer, url = here("results", "map_summer.html"))
