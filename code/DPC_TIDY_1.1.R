rm(list=ls())

library("tidyverse")    #Loads the TIDYVERSEEEEEEEEE
library("readxl") #Loads package to read xlsx and sheets
library("writexl") #Exports packages 
library("janitor")
library("plotly")
library("here")
library("usethis")

#usethis::use_git()
#usethis::use_github()

#Imports for Delaware, Race Categories
DE_ALL <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2022.xlsx", sheet = "Delaware-All") %>% 
  na.omit()
#DE_White <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2022.xlsx", sheet = "Delaware-Wh")
#DE_Oth <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2022.xlsx", sheet = "Delaware-Oth")
#DE_Black <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2022.xlsx", sheet = "Delaware-Bl")
#DE_Hisp <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2022.xlsx", sheet = "Delaware-Hisp")

##A function that deletes first blank row across different sheets
import_dpc <- function(sheetname){read_excel("DPC_Population Estimates_2021.xlsx",
                                             sheet = sheetname) %>% na.omit}

##Imports New Castle County Data
ncc_all <-import_dpc(sheetname = "New Castle-All")
ncc_white <-import_dpc(sheetname = "New Castle-Wh")
ncc_oth <-import_dpc(sheetname = "New Castle-Oth")
ncc_hisp <-import_dpc(sheetname = "New Castle-Hisp")
ncc_black <-import_dpc(sheetname = "New Castle-Bl")


##Imports Wilmington data
wilm_all <- import_dpc(sheetname = "Wilm-All")
wilm_white <- import_dpc(sheetname = "Wilm-Wh")
wilm_oth <- import_dpc(sheetname = "Wilm-Oth")
wilm_hisp <- import_dpc(sheetname = "Wilm-Hisp")
wilm_black <- import_dpc(sheetname = "Wilm-Bl")


#Imports Kent County Data
kent_all <- import_dpc(sheetname = "Kent-All")
kent_white <- import_dpc(sheetname = "Kent-Wh")
kent_oth <- import_dpc(sheetname = "Kent-Oth")
kent_hisp <- import_dpc(sheetname = "Kent-Hisp")
kent_black <- import_dpc(sheetname = "Kent-Bl")



#Imports Sussex County Data
sus_all <- import_dpc(sheetname = "Sussex-All")
sus_white <- import_dpc(sheetname = "Sussex-Wh")
sus_oth <- import_dpc(sheetname = "Sussex-Oth")
sus_hisp <- import_dpc(sheetname = "Sussex-Hisp")
sus_black<- import_dpc(sheetname = "Sussex-Bl")










##Create function to pivot county level objects
piv_dpc_dat <- function(dat){
    dat %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')}

##Pivot NCC
ncc_wh_long <- piv_dpc_dat(dat=ncc_white) %>% na.omit()
ncc_oth_long <- piv_dpc_dat(dat=ncc_oth) %>% na.omit()
ncc_hisp_long <- piv_dpc_dat(dat=ncc_hisp) %>% na.omit()
ncc_black_long <- piv_dpc_dat(dat=ncc_black) %>% na.omit()

ncc_bind <- bind_rows(ncc_wh_long, ncc_oth_long, ncc_hisp_long, ncc_black_long)


##Pivot Wilm
wilm_wh_long <- piv_dpc_dat(dat=wilm_white)
wilm_oth_long <- piv_dpc_dat(dat=wilm_oth)
wilm_hisp_long <- piv_dpc_dat(dat=wilm_hisp)
wilm_black_long <- piv_dpc_dat(dat=wilm_black)

wilm_bind <- bind_rows(wilm_wh_long, wilm_oth_long, wilm_hisp_long, wilm_black_long)


##Pivot Kent
kent_wh_long <- piv_dpc_dat(dat=kent_white)
kent_oth_long <- piv_dpc_dat(dat=kent_oth)
kent_hisp_long <- piv_dpc_dat(dat=kent_hisp)
kent_black_long <- piv_dpc_dat(dat=kent_black)

kent_bind <- bind_rows(kent_wh_long, kent_oth_long, kent_hisp_long, kent_black_long)


##Pivot Sussex
sus_wh_long <- piv_dpc_dat(dat=sus_white)
sus_oth_long <- piv_dpc_dat(dat=sus_oth)
sus_hisp_long <- piv_dpc_dat(dat=sus_hisp)
sus_black_long <- piv_dpc_dat(dat=sus_black)

sus_bind <- bind_rows(sus_wh_long, sus_oth_long, sus_hisp_long, sus_black_long)






  
  
  
  ##Function call to clean county level data
clean_dpc_data <- function(dat, county, dum){ dat %>% rename(population_est= AgeGendCount) %>% 
  mutate(agegend_chr = as.character(`Age-Gender`)) %>% subset(agegend_chr!="Total") %>% 
  
  ##Create Character Variables
  mutate(age = parse_number(agegend_chr),
        race = str_extract(agegend_chr, "['W' 'B' 'H' 'O']+"),
        sex = str_extract(agegend_chr, "['M' 'F']+"),
        county := {{ county }}) %>% 
  
  ##Create Dummy Variables
  mutate(county_dummy := as.integer({{ dum }}),
         race_dummy =  case_when(race == 'W' ~ 0,
                                 race == 'B' ~ 1,
                                 race == 'H' ~ 5,
                                 race == 'O' ~ 7),
         sex_dummy =   if_else(sex == "M", 0, 1)) %>% 
  
  ## Create Age Groupings - Age Adjustment
  mutate(age_group_rt = case_when(
                                   age <= 4 ~ 0,
                                   age >= 5 & age <= 14 ~ 1,
                                   age >= 15 & age <= 24 ~ 2,
                                   age >= 25 & age <= 34 ~ 3,
                                   age >= 35 & age <= 44 ~ 4,
                                   age >= 45 & age <= 54 ~ 5,
                                   age >= 55 & age <= 64 ~ 6,
                                   age >= 65 & age <= 74 ~ 7,
                                   age >= 75 & age <= 84 ~ 8,
                                   age >= 85 ~ 9),
  
   ## Create Age Groupings - ten year age groups
      age_group_tenyr = case_when(
                                  age < 5 ~ 0,
                                  age >= 5 & age <= 14 ~ 1,
                                  age >= 15 & age <= 24 ~ 2,
                                  age >= 25 & age <= 34 ~ 3,
                                  age >= 45 & age <= 54 ~ 4,
                                  age >= 55 & age <= 64 ~ 5,
                                  age >= 65 ~ 6)) %>% 
    
    ## Discards initial age gender variable for cleaner formats
    select(!c(`Age-Gender`, 'agegend_chr'))}
    

##Creates objects for each clean county dataset
ncc_clean <- clean_dpc_data(dat=ncc_bind, county="NCC", dum = 1)
kent_clean <- clean_dpc_data(dat=kent_bind, county="K", dum = 2)
sus_clean <- clean_dpc_data(dat=sus_bind, county="SUS", dum = 3)
wilm_clean <- clean_dpc_data(dat=wilm_bind, county="WILM", dum = 4)

      
##Combined cleaned DE DATA
DEBIND1 <- rbind(ncc_clean, kent_clean, sus_clean)




writexl::write_xlsx(DEBIND1, "/Users/joesimeone/Desktop/R Master/DPC/clean data/DPC_Tidy_2021_EST.xlsx")



                
                