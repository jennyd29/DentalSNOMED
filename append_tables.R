# load packages
library(tidyverse)

# read in files
oral_surgery <- read.delim("Data/oral_surgery.txt")
procedures_by_tooth <- read.delim("Data/procedures_by_tooth.txt")
procedures <- read.delim("Data/procedures.txt")
tooth_deciduous <- read.delim("Data/tooth_deciduous.txt")
tooth_permanent <- read.delim("Data/tooth_permanent.txt")
tooth_supernumerary <- read.delim("Data/tooth_supernumerary.txt")
tooth_surface <- read.delim("Data/tooth_surface.txt")

# add column to each data frame with name of original file
oral_surgery <- oral_surgery %>% 
  mutate(original_file = "dental_oral_surgery")

procedures_by_tooth <- procedures_by_tooth %>% 
  mutate(original_file = "dental_procedures_by_tooth")

procedures <- procedures %>% 
  mutate(original_file = "dental_procedures")

tooth_deciduous <- tooth_deciduous %>% 
  mutate(original_file = "dental_tooth_deciduous")

tooth_permanent <- tooth_permanent %>% 
  mutate(original_file = "dental_tooth_permanent")

tooth_supernumerary <- tooth_supernumerary %>% 
  mutate(original_file = "dental_tooth_supernumerary")

tooth_surface <- tooth_surface %>% 
  mutate(original_file = "dental_tooth_surface")

# rbind the data frames
combined <- rbind(oral_surgery,
                  procedures_by_tooth, 
                  procedures, 
                  tooth_deciduous, 
                  tooth_permanent, 
                  tooth_supernumerary, 
                  tooth_surface)

# save out as csv
write.csv(combined, "Data/dental_SNOMED_codes.csv", row.names = FALSE)

