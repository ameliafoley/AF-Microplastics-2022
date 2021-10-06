###############################
# processing script
#
#this script loads the raw data, processes and cleans it 
#and saves it as Rds file in the processed_data folder

#load  packages
library(readxl) #for loading Excel files
library(dplyr) #for data processing
library(here) #to set paths
library(tidyverse)

#path to data
data_location1 <- here::here("data","raw_data","mpdata_ALL.xlsx")
data_location2 <- here::here("data","raw_data","uown 8.26.xlsx")

#load data. 
rawdata1 <- read_excel(data_location1)
rawdata2 <- read_excel(data_location2)

#take a look at the data
glimpse(rawdata1)
glimpse(rawdata2)

#view the dataset on screen
print(rawdata1)
print(rawdata2)

#we have 11 variables in the first dataset, and 18 in the second. These variables
#should correspond so that we can combine the datasets

rawdata <- full_join(rawdata1, rawdata2)

# now, we have a combined dataset to work with

glimpse(rawdata)

# the notes column won't be neccessary for data analysis. Columns 16, 17, and 18 
# are also unnecessary. Let's remove those. 

processeddata <- rawdata %>% select(-"notes", -(17:19))

# assessing missing values
is.na(processeddata) %>% summary()

# Since there are just a few observations that are missing location (watershed, lat, and long)
# and/or count data, and there is not a great way to impute them. Since I am working
# with data that I collected myself, I know that those observations simply didn't
# get counted, got lost, or site names were misread/input incorrectly. Let's clean 
# up the data set. 

processeddata <-subset(processeddata, site!="MIDO 504" & site!="MIDO 503")

# I've removed the rows by name instead of filtering out rows with missing watershed information.
# This is because I want to retain the "control" rows for now, which originated 
# in the lab and don't have a corresponding sample location

# Another thing I can do is tidy the data by filling in all "id" information (all missing ids for previous
# samplings would be me (a)). 

processeddata$id[is.na(processeddata$id)]<-"a"

# Next, let's remove observations where the samples were originally recorded in the
# data sheet, but apparently never got counted during sample processing. Again, 
# we just want to remove sample type observations and not control type observations. 

sampledata <- processeddata %>% filter(obs_type == "sample") %>% subset(a_count!="NA" & b_count!="NA")
controldata <- processeddata %>% filter(obs_type == "control")

# There are a lot of missing values for the c_count and d_count. These 
# variables resulted from the fourth quarterly sampling in the dataset, when
# volunteers were enlisted to participate in a microplastics visual identificaiton
# training session, and volunteers then completed counts. IDs (a, b, c, etc) were 
# recorded for volunteers. Each biological samples usually includes two technical 
# replicates - the a_count and b_count. For the volunteer session, each set of 
# replicates was counted twice (once by two different volunteers) in order to 
# assess the efficacy of the training program/reproducability of counts. 

# Ideas to address this: 
# 1. Subset the data into one group of all samples with just a_count
# and b_count and another group with counts a, b, c, and d for the July sampling

# volunteer contains original particle_l values
volunteer <- sampledata %>% filter(date == "july_21") #subsetting data with excess counts

# I can look at this subset later to examine differences in counts. For the purposes
# of the overall data set, I will average the four counts for the july samples
# in order to calculate the particles per liter value. Since particles_l is already calculated
# for a_count and b_count, and c_count and d_count, respectively, I'll average that value. 

# julydata contains averaged particle_l values to be added to the sampledata dataset
julydata <- sampledata %>% filter(date == "july_21") %>% mutate(
   particles_l = ((particles_l+rep_particles_l)/2), 
   rep_particles_l = NULL) 

otherdata <- sampledata %>% filter(!date== "july_21") #to rejoin later

#merging mutated data
cleansampledata <- full_join(otherdata, julydata) %>% select(-"id",
                                                         -"id2",
                                                         -"rep_particles_l",
                                                         -"a_count",
                                                         -"b_count", 
                                                         -"c_count",
                                                         -"d_count",
                                                         -"volume_ml",
                                                         -"obs_type")

# save data as RDS

# location to save file
save_data_location <- here::here("data","processed_data","cleansampledata.rds") 
save_data_location1 <- here::here("data","processed_data","volunteer.rds") #saving july volunteer data to look at later
save_data_location2 <- here::here("data","processed_data","controldata.rds")

saveRDS(cleansampledata, file = save_data_location)
saveRDS(volunteer, file = save_data_location1)
saveRDS(controldata, file = save_data_location2)


