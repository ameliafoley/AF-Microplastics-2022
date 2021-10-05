###############################
# processing script
#
#this script loads the raw data, processes and cleans it 
#and saves it as Rds file in the processed_data folder

#load  packages
library(readxl) #for loading Excel files
library(dplyr) #for data processing
library(here) #to set paths

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

processeddata <- rawdata %>% select(-"notes", -(16:18))

# assessing missing values
is.na(processeddata) %>% summary()

# There are a lot of missing values for the c_count and d_count. These 
# variables resulted from the fourth quarterly sampling in the dataset, when
# volunteers were enlisted to participate in a microplastics visual identificaiton
# training session, and volunteers then completed counts. IDs (a, b, c, etc) were 
# recorded for volunteers. Each biological samples usually includes two technical 
# replicates - the a_count and b_count. For the volunteer session, each set of 
# replicates was counted twice (once by two different volunteers) in order to 
# assess the efficacy of the training program/reproducability of counts. 

# Some options: 
# 1. Subset the data into one group of all samples with just a_count
# and b_count and another group with counts a, b, c, and d for the July sampling
# 2. Tidy the data by filling in all "id" information (all missing ids for previous
# samplings would be me (1)). 

# this is one way of doing it. Note that if the data gets updated, 
# we need to decide if the thresholds are ok (newborns could be <50)

processeddata <- rawdata %>% dplyr::filter( Height != "sixty" ) %>% 
                             dplyr::mutate(Height = as.numeric(Height)) %>% 
                             dplyr::filter(Height > 50 & Weight < 1000)

# save data as RDS
# I suggest you save your processed and cleaned data as RDS or RDA/Rdata files. 
# This preserves coding like factors, characters, numeric, etc. 
# If you save as CSV, that information would get lost.
# See here for some suggestions on how to store your processed data:
# http://www.sthda.com/english/wiki/saving-data-into-r-data-format-rds-and-rdata

# location to save file
save_data_location <- here::here("data","processed_data","processeddata.rds")

saveRDS(processeddata, file = save_data_location)


