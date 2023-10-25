rm(list=ls())

library("tidyverse")    #Loads the TIDYVERSEEEEEEEEE
library("readxl") #Loads package to read xlsx and sheets
library("writexl") #Exports packages 
library("janitor")
library("plotly")
library("here")




#Imports for Delaware, Race Categories
DE_ALL <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Delaware-All")
DE_White <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Delaware-Wh")
DE_Oth <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Delaware-Oth")
DE_Black <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Delaware-Bl")
DE_Hisp <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Delaware-Hisp")


#view(DE_ALL)
#view(DE_White)
#view(DE_Black)
#view(DE_Oth)
#view(DE_Hisp) 

#Imports for New Castle County
NCC_ALL <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "New Castle-All")
NCC_White <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "New Castle-Wh")
NCC_Oth <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "New Castle-Oth")
NCC_Black <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "New Castle-Bl")
NCC_Hisp <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "New Castle-Hisp")

#view(NCC_ALL)
#view(NCC_White)
#view(NCC_Black)
#view(NCC_Oth)
#view(NCC_Hisp) 

#Imports for Wilmington
WILM_ALL <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Wilm-All")
WILM_White <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Wilm-Wh")
WILM_Oth <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Wilm-Oth")
WILM_Black <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Wilm-Bl")
WILM_Hisp <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Wilm-Hisp")

#view(WILM_ALL)
#view(WILM_White)
#view(WILM_Black)
#view(WILM_Oth)
#view(WILM_Hisp) 

#Imports for Kent
KENT_ALL <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Kent-All")
KENT_White <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Kent-Wh")
KENT_Oth <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Kent-Oth")
KENT_Black <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Kent-Bl")
KENT_Hisp <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Kent-Hisp")

#view(KENT_ALL)
#view(KENT_White)
#view(KENT_Black)
#view(KENT_Oth)
#view(KENT_Hisp) 

#Imports for Sussex
SUS_ALL <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Sussex-All")
SUS_White <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Sussex-Wh")
SUS_Oth <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Sussex-Oth")
SUS_Black <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Sussex-Bl")
SUS_Hisp <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates_2021.xlsx", sheet = "Sussex-Hisp")

#view(KENT_ALL)
#view(KENT_White)
#view(KENT_Black)
#view(KENT_Oth)
#view(KENT_Hisp) 




#NCC_BOUND2 %>% 
  #tally('AGEGEND_CHAR' == "HM000")


#Begin Cleaning - Pivoting Long to create year variables

#Delaware Pivot###################IGNORE FOR THE MOMENT
#DE_ALL_LONG <- DE_ALL %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
#DE_Wh_LONG <- DE_White %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
#DE_Bl_LONG <- DE_Black %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
#DE_Oth_LONG <- DE_Oth %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
#DE_Hisp_LONG <- DE_Hisp %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')

#view(DE_ALL_LONG)

#NCC Pivot
NCC_ALL_LONG <- NCC_ALL %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
NCC_Wh_LONG <- NCC_White %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
NCC_Bl_LONG <- NCC_Black %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
NCC_Oth_LONG <- NCC_Oth %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
NCC_Hisp_LONG <- NCC_Hisp %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')


NCC_BOUND <- rbind(NCC_Wh_LONG, NCC_Bl_LONG, NCC_Oth_LONG, NCC_Hisp_LONG) 
NCC_BOUND2 <- NCC_BOUND %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`)) %>%
 subset(AGEGEND_CHR!="Total") %>% 
  mutate(Age = parse_number(AGEGEND_CHR)) %>%
  mutate(Race_Sex = str_extract(AGEGEND_CHR, "['WM' 'WF' 'BM' 'BF'
                                'HM' 'HF' 'OM' 'OF']+")) %>%
  mutate(Race = str_extract(AGEGEND_CHR, "['W' 'B' 'H' 'O']+")) %>%
  mutate(Sex = str_extract(AGEGEND_CHR, "['M' 'F']+")) %>%
  mutate(County = "NCC") %>%
  mutate(CountyDUM = as.integer(1))%>%
  mutate(RaceDUM = case_when(Race == 'W' ~ 0,
                             Race == 'B' ~ 1,
                             Race == 'H' ~ 5,
                             Race == 'O' ~ 7)) %>%
  mutate(SexDUM = if_else(Sex == "M", 0, 1)) %>%
mutate(AgeRT = case_when
       
       #Group for Age Adjustment: 0 - 4
       (grepl("000", AGEGEND_CHR) ~ "0",
         grepl("001", AGEGEND_CHR) ~ "0",
         grepl("002", AGEGEND_CHR) ~ "0",
         grepl("003", AGEGEND_CHR) ~ "0",
         grepl("004", AGEGEND_CHR) ~ "0",
         
         #Group for Age Adjustment: 5-14
         grepl("005", AGEGEND_CHR) ~ "1",
         grepl("006", AGEGEND_CHR) ~ "1",
         grepl("007", AGEGEND_CHR) ~ "1",
         grepl("008", AGEGEND_CHR) ~ "1",
         grepl("009", AGEGEND_CHR) ~ "1",
         grepl("010", AGEGEND_CHR) ~ "1",
         grepl("011", AGEGEND_CHR) ~ "1",
         grepl("012", AGEGEND_CHR) ~ "1",
         grepl("013", AGEGEND_CHR) ~ "1",
         grepl("014", AGEGEND_CHR) ~ "1",
         
         
         #Group for Age Adjustment: 15-24
         grepl("015", AGEGEND_CHR) ~ "2",
         grepl("016", AGEGEND_CHR) ~ "2",
         grepl("017", AGEGEND_CHR) ~ "2",
         grepl("018", AGEGEND_CHR) ~ "2",
         grepl("019", AGEGEND_CHR) ~ "2",
         grepl("020", AGEGEND_CHR) ~ "2",
         grepl("021", AGEGEND_CHR) ~ "2",
         grepl("022", AGEGEND_CHR) ~ "2",
         grepl("023", AGEGEND_CHR) ~ "2",
         grepl("024", AGEGEND_CHR) ~ "2",
         
         
         #Group for Age Adjustment: 25-34
         grepl("025", AGEGEND_CHR) ~ "3",
         grepl("026", AGEGEND_CHR) ~ "3",
         grepl("027", AGEGEND_CHR) ~ "3",
         grepl("028", AGEGEND_CHR) ~ "3",
         grepl("029", AGEGEND_CHR) ~ "3",
         grepl("030", AGEGEND_CHR) ~ "3",
         grepl("031", AGEGEND_CHR) ~ "3",
         grepl("032", AGEGEND_CHR) ~ "3",
         grepl("033", AGEGEND_CHR) ~ "3",
         grepl("034", AGEGEND_CHR) ~ "3",
         
         #Group for Age Adjustment: 35-44
         grepl("035", AGEGEND_CHR) ~ "4",
         grepl("036", AGEGEND_CHR) ~ "4",
         grepl("037", AGEGEND_CHR) ~ "4",
         grepl("038", AGEGEND_CHR) ~ "4",
         grepl("039", AGEGEND_CHR) ~ "4",
         grepl("040", AGEGEND_CHR) ~ "4",
         grepl("041", AGEGEND_CHR) ~ "4",
         grepl("042", AGEGEND_CHR) ~ "4",
         grepl("043", AGEGEND_CHR) ~ "4",
         grepl("044", AGEGEND_CHR) ~ "4",
         
         #Group for Age Adjustment: 45-54
         grepl("045", AGEGEND_CHR) ~ "5",
         grepl("046", AGEGEND_CHR) ~ "5",
         grepl("047", AGEGEND_CHR) ~ "5",
         grepl("048", AGEGEND_CHR) ~ "5",
         grepl("049", AGEGEND_CHR) ~ "5",
         grepl("050", AGEGEND_CHR) ~ "5",
         grepl("051", AGEGEND_CHR) ~ "5",
         grepl("052", AGEGEND_CHR) ~ "5",
         grepl("053", AGEGEND_CHR) ~ "5",
         grepl("054", AGEGEND_CHR) ~ "5",
         
         #Group for Age Adjustment: 55-64
         grepl("055", AGEGEND_CHR) ~ "6",
         grepl("056", AGEGEND_CHR) ~ "6",
         grepl("057", AGEGEND_CHR) ~ "6",
         grepl("058", AGEGEND_CHR) ~ "6",
         grepl("059", AGEGEND_CHR) ~ "6",
         grepl("060", AGEGEND_CHR) ~ "6",
         grepl("061", AGEGEND_CHR) ~ "6",
         grepl("062", AGEGEND_CHR) ~ "6",
         grepl("063", AGEGEND_CHR) ~ "6",
         grepl("064", AGEGEND_CHR) ~ "6",
         
         #Group for Age Adjustment: 65-74
         grepl("065", AGEGEND_CHR) ~ "7",
         grepl("066", AGEGEND_CHR) ~ "7",
         grepl("067", AGEGEND_CHR) ~ "7",
         grepl("068", AGEGEND_CHR) ~ "7",
         grepl("069", AGEGEND_CHR) ~ "7",
         grepl("070", AGEGEND_CHR) ~ "7",
         grepl("071", AGEGEND_CHR) ~ "7",
         grepl("072", AGEGEND_CHR) ~ "7",
         grepl("073", AGEGEND_CHR) ~ "7",
         grepl("074", AGEGEND_CHR) ~ "7",
         
         #Group for Age Adjustment: 75 - 84
         grepl("075", AGEGEND_CHR) ~ "8",
         grepl("076", AGEGEND_CHR) ~ "8",
         grepl("077", AGEGEND_CHR) ~ "8",
         grepl("078", AGEGEND_CHR) ~ "8",
         grepl("079", AGEGEND_CHR) ~ "8",
         grepl("080", AGEGEND_CHR) ~ "8",
         grepl("081", AGEGEND_CHR) ~ "8",
         grepl("082", AGEGEND_CHR) ~ "8",
         grepl("083", AGEGEND_CHR) ~ "8",
         grepl("084", AGEGEND_CHR) ~ "8",
         
         #Group for Age Adjustment: 85+
         grepl("085", AGEGEND_CHR) ~ "9",
         grepl("086", AGEGEND_CHR) ~ "9",
         grepl("087", AGEGEND_CHR) ~ "9",
         grepl("088", AGEGEND_CHR) ~ "9",
         grepl("089", AGEGEND_CHR) ~ "9",
         grepl("090", AGEGEND_CHR) ~ "9",
         grepl("091", AGEGEND_CHR) ~ "9",
         grepl("092", AGEGEND_CHR) ~ "9",
         grepl("093", AGEGEND_CHR) ~ "9",
         grepl("094", AGEGEND_CHR) ~ "9",
         grepl("095", AGEGEND_CHR) ~ "9",
         grepl("096", AGEGEND_CHR) ~ "9",
         grepl("097", AGEGEND_CHR) ~ "9",
         grepl("098", AGEGEND_CHR) ~ "9",
         grepl("099", AGEGEND_CHR) ~ "9",
         grepl("100", AGEGEND_CHR) ~ "9",))  %>% 
  
  
  mutate(Age10yr = case_when
         
         #Group for Age: Under 15
         (grepl("000", AGEGEND_CHR) ~ "0",
           grepl("001", AGEGEND_CHR) ~ "0",
           grepl("002", AGEGEND_CHR) ~ "0",
           grepl("003", AGEGEND_CHR) ~ "0",
           grepl("004", AGEGEND_CHR) ~ "0",
           grepl("005", AGEGEND_CHR) ~ "0",
           grepl("006", AGEGEND_CHR) ~ "0",
           grepl("007", AGEGEND_CHR) ~ "0",
           grepl("008", AGEGEND_CHR) ~ "0",
           grepl("009", AGEGEND_CHR) ~ "0",
           grepl("010", AGEGEND_CHR) ~ "0",
           grepl("011", AGEGEND_CHR) ~ "0",
           grepl("012", AGEGEND_CHR) ~ "0",
           grepl("013", AGEGEND_CHR) ~ "0",
           grepl("014", AGEGEND_CHR) ~ "0",
           
           #Group for Age Routes: 5-14
           grepl("015", AGEGEND_CHR) ~ "1",
           grepl("016", AGEGEND_CHR) ~ "1",
           grepl("017", AGEGEND_CHR) ~ "1",
           grepl("018", AGEGEND_CHR) ~ "1",
           grepl("019", AGEGEND_CHR) ~ "1",
           grepl("020", AGEGEND_CHR) ~ "1",
           grepl("021", AGEGEND_CHR) ~ "1",
           grepl("022", AGEGEND_CHR) ~ "1",
           grepl("023", AGEGEND_CHR) ~ "1",
           grepl("024", AGEGEND_CHR) ~ "1",
           
           
           #Group for Age Cat: 25 - 34
           grepl("025", AGEGEND_CHR) ~ "2",
           grepl("026", AGEGEND_CHR) ~ "2",
           grepl("027", AGEGEND_CHR) ~ "2",
           grepl("028", AGEGEND_CHR) ~ "2",
           grepl("029", AGEGEND_CHR) ~ "2",
           grepl("030", AGEGEND_CHR) ~ "2",
           grepl("031", AGEGEND_CHR) ~ "2",
           grepl("032", AGEGEND_CHR) ~ "2",
           grepl("033", AGEGEND_CHR) ~ "2",
           grepl("034", AGEGEND_CHR) ~ "2",
           
           #Group for Age Cat: 35 - 44
           grepl("035", AGEGEND_CHR) ~ "3",
           grepl("036", AGEGEND_CHR) ~ "3",
           grepl("037", AGEGEND_CHR) ~ "3",
           grepl("038", AGEGEND_CHR) ~ "3",
           grepl("039", AGEGEND_CHR) ~ "3",
           grepl("040", AGEGEND_CHR) ~ "3",
           grepl("041", AGEGEND_CHR) ~ "3",
           grepl("042", AGEGEND_CHR) ~ "3",
           grepl("043", AGEGEND_CHR) ~ "3",
           grepl("044", AGEGEND_CHR) ~ "3",
           
           #Group for Age Cat: 45 - 54
           grepl("045", AGEGEND_CHR) ~ "4",
           grepl("046", AGEGEND_CHR) ~ "4",
           grepl("047", AGEGEND_CHR) ~ "4",
           grepl("048", AGEGEND_CHR) ~ "4",
           grepl("049", AGEGEND_CHR) ~ "4",
           grepl("050", AGEGEND_CHR) ~ "4",
           grepl("051", AGEGEND_CHR) ~ "4",
           grepl("052", AGEGEND_CHR) ~ "4",
           grepl("053", AGEGEND_CHR) ~ "4",
           grepl("054", AGEGEND_CHR) ~ "4",
           
           #Group for Age Cat: 55 - 64
           grepl("055", AGEGEND_CHR) ~ "5",
           grepl("056", AGEGEND_CHR) ~ "5",
           grepl("057", AGEGEND_CHR) ~ "5",
           grepl("058", AGEGEND_CHR) ~ "5",
           grepl("059", AGEGEND_CHR) ~ "5",
           grepl("060", AGEGEND_CHR) ~ "5",
           grepl("061", AGEGEND_CHR) ~ "5",
           grepl("062", AGEGEND_CHR) ~ "5",
           grepl("063", AGEGEND_CHR) ~ "5",
           grepl("064", AGEGEND_CHR) ~ "5",
           
           #Group for 65+
           grepl("065", AGEGEND_CHR) ~ "6",
           grepl("066", AGEGEND_CHR) ~ "6",
           grepl("067", AGEGEND_CHR) ~ "6",
           grepl("068", AGEGEND_CHR) ~ "6",
           grepl("069", AGEGEND_CHR) ~ "6",
           grepl("070", AGEGEND_CHR) ~ "6",
           grepl("071", AGEGEND_CHR) ~ "6",
           grepl("072", AGEGEND_CHR) ~ "6",
           grepl("073", AGEGEND_CHR) ~ "6",
           grepl("074", AGEGEND_CHR) ~ "6",
           grepl("075", AGEGEND_CHR) ~ "6",
           grepl("076", AGEGEND_CHR) ~ "6",
           grepl("077", AGEGEND_CHR) ~ "6",
           grepl("078", AGEGEND_CHR) ~ "6",
           grepl("079", AGEGEND_CHR) ~ "6",
           grepl("080", AGEGEND_CHR) ~ "6",
           grepl("081", AGEGEND_CHR) ~ "6",
           grepl("082", AGEGEND_CHR) ~ "6",
           grepl("083", AGEGEND_CHR) ~ "6",
           grepl("084", AGEGEND_CHR) ~ "6",
           grepl("085", AGEGEND_CHR) ~ "6",
           grepl("086", AGEGEND_CHR) ~ "6",
           grepl("087", AGEGEND_CHR) ~ "6",
           grepl("088", AGEGEND_CHR) ~ "6",
           grepl("089", AGEGEND_CHR) ~ "6",
           grepl("090", AGEGEND_CHR) ~ "6",
           grepl("091", AGEGEND_CHR) ~ "6",
           grepl("092", AGEGEND_CHR) ~ "6",
           grepl("093", AGEGEND_CHR) ~ "6",
           grepl("094", AGEGEND_CHR) ~ "6",
           grepl("095", AGEGEND_CHR) ~ "6",
           grepl("096", AGEGEND_CHR) ~ "6",
           grepl("097", AGEGEND_CHR) ~ "6",
           grepl("098", AGEGEND_CHR) ~ "6",
           grepl("099", AGEGEND_CHR) ~ "6",
           grepl("100", AGEGEND_CHR) ~ "6",))  %>%
  
  
  
  mutate(AgeRtN = as.integer(AgeRT)) %>%
  mutate(Age10yrN = as.integer(Age10yr)) %>%
  rename(PopulationEST= AgeGendCount)

NCC_FIN <- NCC_BOUND2 %>% select(!c(`Age-Gender`, 'AGEGEND_CHR', 'Race_Sex'))



                          

    
    glimpse(NCC_BOUND2)







#Wilm Pivot
WILM_ALL_LONG <- WILM_ALL %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
WILM_Wh_LONG <- WILM_White %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
WILM_Bl_LONG <- WILM_Black %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
WILM_Oth_LONG <- WILM_Oth %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
WILM_Hisp_LONG <- WILM_Hisp %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')

#view(WILM_ALL_LONG)



WILM_BOUND <- rbind(WILM_Wh_LONG, WILM_Bl_LONG, WILM_Oth_LONG, WILM_Hisp_LONG) 
WILM_BOUND2 <- WILM_BOUND %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`)) %>%
  subset(AGEGEND_CHR!="Total") %>% 
  mutate(Age = parse_number(AGEGEND_CHR)) %>%
  mutate(Race_Sex = str_extract(AGEGEND_CHR, "['WM' 'WF' 'BM' 'BF'
                                'HM' 'HF' 'OM' 'OF']+")) %>%
  mutate(Race = str_extract(AGEGEND_CHR, "['W' 'B' 'H' 'O']+")) %>%
  mutate(Sex = str_extract(AGEGEND_CHR, "['M' 'F']+")) %>%
  mutate(County = "WILM") %>%
  mutate(CountyDUM = as.integer(7))%>%
  mutate(RaceDUM = case_when(Race == 'W' ~ 0,
                             Race == 'B' ~ 1,
                             Race == 'H' ~ 5,
                             Race == 'O' ~ 7)) %>%
  mutate(SexDUM = if_else(Sex == "M", 0, 1))%>%
  mutate(AgeRT = case_when
         
         #Group for Age Adjustment: 0 - 4
         (grepl("000", AGEGEND_CHR) ~ "0",
           grepl("001", AGEGEND_CHR) ~ "0",
           grepl("002", AGEGEND_CHR) ~ "0",
           grepl("003", AGEGEND_CHR) ~ "0",
           grepl("004", AGEGEND_CHR) ~ "0",
           
           #Group for Age Adjustment: 5-14
           grepl("005", AGEGEND_CHR) ~ "1",
           grepl("006", AGEGEND_CHR) ~ "1",
           grepl("007", AGEGEND_CHR) ~ "1",
           grepl("008", AGEGEND_CHR) ~ "1",
           grepl("009", AGEGEND_CHR) ~ "1",
           grepl("010", AGEGEND_CHR) ~ "1",
           grepl("011", AGEGEND_CHR) ~ "1",
           grepl("012", AGEGEND_CHR) ~ "1",
           grepl("013", AGEGEND_CHR) ~ "1",
           grepl("014", AGEGEND_CHR) ~ "1",
           
           
           #Group for Age Adjustment: 15-24
           grepl("015", AGEGEND_CHR) ~ "2",
           grepl("016", AGEGEND_CHR) ~ "2",
           grepl("017", AGEGEND_CHR) ~ "2",
           grepl("018", AGEGEND_CHR) ~ "2",
           grepl("019", AGEGEND_CHR) ~ "2",
           grepl("020", AGEGEND_CHR) ~ "2",
           grepl("021", AGEGEND_CHR) ~ "2",
           grepl("022", AGEGEND_CHR) ~ "2",
           grepl("023", AGEGEND_CHR) ~ "2",
           grepl("024", AGEGEND_CHR) ~ "2",
           
           
           #Group for Age Adjustment: 25-34
           grepl("025", AGEGEND_CHR) ~ "3",
           grepl("026", AGEGEND_CHR) ~ "3",
           grepl("027", AGEGEND_CHR) ~ "3",
           grepl("028", AGEGEND_CHR) ~ "3",
           grepl("029", AGEGEND_CHR) ~ "3",
           grepl("030", AGEGEND_CHR) ~ "3",
           grepl("031", AGEGEND_CHR) ~ "3",
           grepl("032", AGEGEND_CHR) ~ "3",
           grepl("033", AGEGEND_CHR) ~ "3",
           grepl("034", AGEGEND_CHR) ~ "3",
           
           #Group for Age Adjustment: 35-44
           grepl("035", AGEGEND_CHR) ~ "4",
           grepl("036", AGEGEND_CHR) ~ "4",
           grepl("037", AGEGEND_CHR) ~ "4",
           grepl("038", AGEGEND_CHR) ~ "4",
           grepl("039", AGEGEND_CHR) ~ "4",
           grepl("040", AGEGEND_CHR) ~ "4",
           grepl("041", AGEGEND_CHR) ~ "4",
           grepl("042", AGEGEND_CHR) ~ "4",
           grepl("043", AGEGEND_CHR) ~ "4",
           grepl("044", AGEGEND_CHR) ~ "4",
           
           #Group for Age Adjustment: 45-54
           grepl("045", AGEGEND_CHR) ~ "5",
           grepl("046", AGEGEND_CHR) ~ "5",
           grepl("047", AGEGEND_CHR) ~ "5",
           grepl("048", AGEGEND_CHR) ~ "5",
           grepl("049", AGEGEND_CHR) ~ "5",
           grepl("050", AGEGEND_CHR) ~ "5",
           grepl("051", AGEGEND_CHR) ~ "5",
           grepl("052", AGEGEND_CHR) ~ "5",
           grepl("053", AGEGEND_CHR) ~ "5",
           grepl("054", AGEGEND_CHR) ~ "5",
           
           #Group for Age Adjustment: 55-64
           grepl("055", AGEGEND_CHR) ~ "6",
           grepl("056", AGEGEND_CHR) ~ "6",
           grepl("057", AGEGEND_CHR) ~ "6",
           grepl("058", AGEGEND_CHR) ~ "6",
           grepl("059", AGEGEND_CHR) ~ "6",
           grepl("060", AGEGEND_CHR) ~ "6",
           grepl("061", AGEGEND_CHR) ~ "6",
           grepl("062", AGEGEND_CHR) ~ "6",
           grepl("063", AGEGEND_CHR) ~ "6",
           grepl("064", AGEGEND_CHR) ~ "6",
           
           #Group for Age Adjustment: 65-74
           grepl("065", AGEGEND_CHR) ~ "7",
           grepl("066", AGEGEND_CHR) ~ "7",
           grepl("067", AGEGEND_CHR) ~ "7",
           grepl("068", AGEGEND_CHR) ~ "7",
           grepl("069", AGEGEND_CHR) ~ "7",
           grepl("070", AGEGEND_CHR) ~ "7",
           grepl("071", AGEGEND_CHR) ~ "7",
           grepl("072", AGEGEND_CHR) ~ "7",
           grepl("073", AGEGEND_CHR) ~ "7",
           grepl("074", AGEGEND_CHR) ~ "7",
           
           #Group for Age Adjustment: 75 - 84
           grepl("075", AGEGEND_CHR) ~ "8",
           grepl("076", AGEGEND_CHR) ~ "8",
           grepl("077", AGEGEND_CHR) ~ "8",
           grepl("078", AGEGEND_CHR) ~ "8",
           grepl("079", AGEGEND_CHR) ~ "8",
           grepl("080", AGEGEND_CHR) ~ "8",
           grepl("081", AGEGEND_CHR) ~ "8",
           grepl("082", AGEGEND_CHR) ~ "8",
           grepl("083", AGEGEND_CHR) ~ "8",
           grepl("084", AGEGEND_CHR) ~ "8",
           
           #Group for Age Adjustment: 85+
           grepl("085", AGEGEND_CHR) ~ "9",
           grepl("086", AGEGEND_CHR) ~ "9",
           grepl("087", AGEGEND_CHR) ~ "9",
           grepl("088", AGEGEND_CHR) ~ "9",
           grepl("089", AGEGEND_CHR) ~ "9",
           grepl("090", AGEGEND_CHR) ~ "9",
           grepl("091", AGEGEND_CHR) ~ "9",
           grepl("092", AGEGEND_CHR) ~ "9",
           grepl("093", AGEGEND_CHR) ~ "9",
           grepl("094", AGEGEND_CHR) ~ "9",
           grepl("095", AGEGEND_CHR) ~ "9",
           grepl("096", AGEGEND_CHR) ~ "9",
           grepl("097", AGEGEND_CHR) ~ "9",
           grepl("098", AGEGEND_CHR) ~ "9",
           grepl("099", AGEGEND_CHR) ~ "9",
           grepl("100", AGEGEND_CHR) ~ "9",))  %>% 
  
  
  mutate(Age10yr = case_when
         
         #Group for Age: Under 15
         (grepl("000", AGEGEND_CHR) ~ "0",
           grepl("001", AGEGEND_CHR) ~ "0",
           grepl("002", AGEGEND_CHR) ~ "0",
           grepl("003", AGEGEND_CHR) ~ "0",
           grepl("004", AGEGEND_CHR) ~ "0",
           grepl("005", AGEGEND_CHR) ~ "0",
           grepl("006", AGEGEND_CHR) ~ "0",
           grepl("007", AGEGEND_CHR) ~ "0",
           grepl("008", AGEGEND_CHR) ~ "0",
           grepl("009", AGEGEND_CHR) ~ "0",
           grepl("010", AGEGEND_CHR) ~ "0",
           grepl("011", AGEGEND_CHR) ~ "0",
           grepl("012", AGEGEND_CHR) ~ "0",
           grepl("013", AGEGEND_CHR) ~ "0",
           grepl("014", AGEGEND_CHR) ~ "0",
           
           #Group for Age Routes: 5-14
           grepl("015", AGEGEND_CHR) ~ "1",
           grepl("016", AGEGEND_CHR) ~ "1",
           grepl("017", AGEGEND_CHR) ~ "1",
           grepl("018", AGEGEND_CHR) ~ "1",
           grepl("019", AGEGEND_CHR) ~ "1",
           grepl("020", AGEGEND_CHR) ~ "1",
           grepl("021", AGEGEND_CHR) ~ "1",
           grepl("022", AGEGEND_CHR) ~ "1",
           grepl("023", AGEGEND_CHR) ~ "1",
           grepl("024", AGEGEND_CHR) ~ "1",
           
           
           #Group for Age Cat: 25 - 34
           grepl("025", AGEGEND_CHR) ~ "2",
           grepl("026", AGEGEND_CHR) ~ "2",
           grepl("027", AGEGEND_CHR) ~ "2",
           grepl("028", AGEGEND_CHR) ~ "2",
           grepl("029", AGEGEND_CHR) ~ "2",
           grepl("030", AGEGEND_CHR) ~ "2",
           grepl("031", AGEGEND_CHR) ~ "2",
           grepl("032", AGEGEND_CHR) ~ "2",
           grepl("033", AGEGEND_CHR) ~ "2",
           grepl("034", AGEGEND_CHR) ~ "2",
           
           #Group for Age Cat: 35 - 44
           grepl("035", AGEGEND_CHR) ~ "3",
           grepl("036", AGEGEND_CHR) ~ "3",
           grepl("037", AGEGEND_CHR) ~ "3",
           grepl("038", AGEGEND_CHR) ~ "3",
           grepl("039", AGEGEND_CHR) ~ "3",
           grepl("040", AGEGEND_CHR) ~ "3",
           grepl("041", AGEGEND_CHR) ~ "3",
           grepl("042", AGEGEND_CHR) ~ "3",
           grepl("043", AGEGEND_CHR) ~ "3",
           grepl("044", AGEGEND_CHR) ~ "3",
           
           #Group for Age Cat: 45 - 54
           grepl("045", AGEGEND_CHR) ~ "4",
           grepl("046", AGEGEND_CHR) ~ "4",
           grepl("047", AGEGEND_CHR) ~ "4",
           grepl("048", AGEGEND_CHR) ~ "4",
           grepl("049", AGEGEND_CHR) ~ "4",
           grepl("050", AGEGEND_CHR) ~ "4",
           grepl("051", AGEGEND_CHR) ~ "4",
           grepl("052", AGEGEND_CHR) ~ "4",
           grepl("053", AGEGEND_CHR) ~ "4",
           grepl("054", AGEGEND_CHR) ~ "4",
           
           #Group for Age Cat: 55 - 64
           grepl("055", AGEGEND_CHR) ~ "5",
           grepl("056", AGEGEND_CHR) ~ "5",
           grepl("057", AGEGEND_CHR) ~ "5",
           grepl("058", AGEGEND_CHR) ~ "5",
           grepl("059", AGEGEND_CHR) ~ "5",
           grepl("060", AGEGEND_CHR) ~ "5",
           grepl("061", AGEGEND_CHR) ~ "5",
           grepl("062", AGEGEND_CHR) ~ "5",
           grepl("063", AGEGEND_CHR) ~ "5",
           grepl("064", AGEGEND_CHR) ~ "5",
           
           #Group for 65+
           grepl("065", AGEGEND_CHR) ~ "6",
           grepl("066", AGEGEND_CHR) ~ "6",
           grepl("067", AGEGEND_CHR) ~ "6",
           grepl("068", AGEGEND_CHR) ~ "6",
           grepl("069", AGEGEND_CHR) ~ "6",
           grepl("070", AGEGEND_CHR) ~ "6",
           grepl("071", AGEGEND_CHR) ~ "6",
           grepl("072", AGEGEND_CHR) ~ "6",
           grepl("073", AGEGEND_CHR) ~ "6",
           grepl("074", AGEGEND_CHR) ~ "6",
           grepl("075", AGEGEND_CHR) ~ "6",
           grepl("076", AGEGEND_CHR) ~ "6",
           grepl("077", AGEGEND_CHR) ~ "6",
           grepl("078", AGEGEND_CHR) ~ "6",
           grepl("079", AGEGEND_CHR) ~ "6",
           grepl("080", AGEGEND_CHR) ~ "6",
           grepl("081", AGEGEND_CHR) ~ "6",
           grepl("082", AGEGEND_CHR) ~ "6",
           grepl("083", AGEGEND_CHR) ~ "6",
           grepl("084", AGEGEND_CHR) ~ "6",
           grepl("085", AGEGEND_CHR) ~ "6",
           grepl("086", AGEGEND_CHR) ~ "6",
           grepl("087", AGEGEND_CHR) ~ "6",
           grepl("088", AGEGEND_CHR) ~ "6",
           grepl("089", AGEGEND_CHR) ~ "6",
           grepl("090", AGEGEND_CHR) ~ "6",
           grepl("091", AGEGEND_CHR) ~ "6",
           grepl("092", AGEGEND_CHR) ~ "6",
           grepl("093", AGEGEND_CHR) ~ "6",
           grepl("094", AGEGEND_CHR) ~ "6",
           grepl("095", AGEGEND_CHR) ~ "6",
           grepl("096", AGEGEND_CHR) ~ "6",
           grepl("097", AGEGEND_CHR) ~ "6",
           grepl("098", AGEGEND_CHR) ~ "6",
           grepl("099", AGEGEND_CHR) ~ "6",
           grepl("100", AGEGEND_CHR) ~ "6",))  %>%
  
  
  
  mutate(AgeRtN = as.integer(AgeRT)) %>%
  mutate(Age10yrN = as.integer(Age10yr)) %>%
  rename(PopulationEST= AgeGendCount)

WILM_FIN <- WILM_BOUND2 %>% select(!c(`Age-Gender`, 'AGEGEND_CHR', 'Race_Sex'))


#Kent Pivot
KENT_ALL_LONG <- KENT_ALL %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
KENT_Wh_LONG <- KENT_White %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
KENT_Bl_LONG <- KENT_Black %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
KENT_Oth_LONG <- KENT_Oth %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
KENT_Hisp_LONG <- KENT_Hisp %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')



KENT_BOUND <- rbind(KENT_Wh_LONG, KENT_Bl_LONG, KENT_Oth_LONG, KENT_Hisp_LONG) 
KENT_BOUND2 <- KENT_BOUND %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`)) %>%
  subset(AGEGEND_CHR!="Total") %>% 
  mutate(Age = parse_number(AGEGEND_CHR)) %>%
  mutate(Race_Sex = str_extract(AGEGEND_CHR, "['WM' 'WF' 'BM' 'BF'
                                'HM' 'HF' 'OM' 'OF']+")) %>%
  mutate(Race = str_extract(AGEGEND_CHR, "['W' 'B' 'H' 'O']+")) %>%
  mutate(Sex = str_extract(AGEGEND_CHR, "['M' 'F']+")) %>%
  mutate(County = "KENT") %>%
  mutate(CountyDUM = as.integer(2))%>%
  mutate(RaceDUM = case_when(Race == 'W' ~ 0,
                             Race == 'B' ~ 1,
                             Race == 'H' ~ 5,
                             Race == 'O' ~ 7)) %>%
  mutate(SexDUM = if_else(Sex == "M", 0, 1))%>%
  mutate(AgeRT = case_when
         
         #Group for Age Adjustment: 0 - 4
         (grepl("000", AGEGEND_CHR) ~ "0",
           grepl("001", AGEGEND_CHR) ~ "0",
           grepl("002", AGEGEND_CHR) ~ "0",
           grepl("003", AGEGEND_CHR) ~ "0",
           grepl("004", AGEGEND_CHR) ~ "0",
           
           #Group for Age Adjustment: 5-14
           grepl("005", AGEGEND_CHR) ~ "1",
           grepl("006", AGEGEND_CHR) ~ "1",
           grepl("007", AGEGEND_CHR) ~ "1",
           grepl("008", AGEGEND_CHR) ~ "1",
           grepl("009", AGEGEND_CHR) ~ "1",
           grepl("010", AGEGEND_CHR) ~ "1",
           grepl("011", AGEGEND_CHR) ~ "1",
           grepl("012", AGEGEND_CHR) ~ "1",
           grepl("013", AGEGEND_CHR) ~ "1",
           grepl("014", AGEGEND_CHR) ~ "1",
           
           
           #Group for Age Adjustment: 15-24
           grepl("015", AGEGEND_CHR) ~ "2",
           grepl("016", AGEGEND_CHR) ~ "2",
           grepl("017", AGEGEND_CHR) ~ "2",
           grepl("018", AGEGEND_CHR) ~ "2",
           grepl("019", AGEGEND_CHR) ~ "2",
           grepl("020", AGEGEND_CHR) ~ "2",
           grepl("021", AGEGEND_CHR) ~ "2",
           grepl("022", AGEGEND_CHR) ~ "2",
           grepl("023", AGEGEND_CHR) ~ "2",
           grepl("024", AGEGEND_CHR) ~ "2",
           
           
           #Group for Age Adjustment: 25-34
           grepl("025", AGEGEND_CHR) ~ "3",
           grepl("026", AGEGEND_CHR) ~ "3",
           grepl("027", AGEGEND_CHR) ~ "3",
           grepl("028", AGEGEND_CHR) ~ "3",
           grepl("029", AGEGEND_CHR) ~ "3",
           grepl("030", AGEGEND_CHR) ~ "3",
           grepl("031", AGEGEND_CHR) ~ "3",
           grepl("032", AGEGEND_CHR) ~ "3",
           grepl("033", AGEGEND_CHR) ~ "3",
           grepl("034", AGEGEND_CHR) ~ "3",
           
           #Group for Age Adjustment: 35-44
           grepl("035", AGEGEND_CHR) ~ "4",
           grepl("036", AGEGEND_CHR) ~ "4",
           grepl("037", AGEGEND_CHR) ~ "4",
           grepl("038", AGEGEND_CHR) ~ "4",
           grepl("039", AGEGEND_CHR) ~ "4",
           grepl("040", AGEGEND_CHR) ~ "4",
           grepl("041", AGEGEND_CHR) ~ "4",
           grepl("042", AGEGEND_CHR) ~ "4",
           grepl("043", AGEGEND_CHR) ~ "4",
           grepl("044", AGEGEND_CHR) ~ "4",
           
           #Group for Age Adjustment: 45-54
           grepl("045", AGEGEND_CHR) ~ "5",
           grepl("046", AGEGEND_CHR) ~ "5",
           grepl("047", AGEGEND_CHR) ~ "5",
           grepl("048", AGEGEND_CHR) ~ "5",
           grepl("049", AGEGEND_CHR) ~ "5",
           grepl("050", AGEGEND_CHR) ~ "5",
           grepl("051", AGEGEND_CHR) ~ "5",
           grepl("052", AGEGEND_CHR) ~ "5",
           grepl("053", AGEGEND_CHR) ~ "5",
           grepl("054", AGEGEND_CHR) ~ "5",
           
           #Group for Age Adjustment: 55-64
           grepl("055", AGEGEND_CHR) ~ "6",
           grepl("056", AGEGEND_CHR) ~ "6",
           grepl("057", AGEGEND_CHR) ~ "6",
           grepl("058", AGEGEND_CHR) ~ "6",
           grepl("059", AGEGEND_CHR) ~ "6",
           grepl("060", AGEGEND_CHR) ~ "6",
           grepl("061", AGEGEND_CHR) ~ "6",
           grepl("062", AGEGEND_CHR) ~ "6",
           grepl("063", AGEGEND_CHR) ~ "6",
           grepl("064", AGEGEND_CHR) ~ "6",
           
           #Group for Age Adjustment: 65-74
           grepl("065", AGEGEND_CHR) ~ "7",
           grepl("066", AGEGEND_CHR) ~ "7",
           grepl("067", AGEGEND_CHR) ~ "7",
           grepl("068", AGEGEND_CHR) ~ "7",
           grepl("069", AGEGEND_CHR) ~ "7",
           grepl("070", AGEGEND_CHR) ~ "7",
           grepl("071", AGEGEND_CHR) ~ "7",
           grepl("072", AGEGEND_CHR) ~ "7",
           grepl("073", AGEGEND_CHR) ~ "7",
           grepl("074", AGEGEND_CHR) ~ "7",
           
           #Group for Age Adjustment: 75 - 84
           grepl("075", AGEGEND_CHR) ~ "8",
           grepl("076", AGEGEND_CHR) ~ "8",
           grepl("077", AGEGEND_CHR) ~ "8",
           grepl("078", AGEGEND_CHR) ~ "8",
           grepl("079", AGEGEND_CHR) ~ "8",
           grepl("080", AGEGEND_CHR) ~ "8",
           grepl("081", AGEGEND_CHR) ~ "8",
           grepl("082", AGEGEND_CHR) ~ "8",
           grepl("083", AGEGEND_CHR) ~ "8",
           grepl("084", AGEGEND_CHR) ~ "8",
           
           #Group for Age Adjustment: 85+
           grepl("085", AGEGEND_CHR) ~ "9",
           grepl("086", AGEGEND_CHR) ~ "9",
           grepl("087", AGEGEND_CHR) ~ "9",
           grepl("088", AGEGEND_CHR) ~ "9",
           grepl("089", AGEGEND_CHR) ~ "9",
           grepl("090", AGEGEND_CHR) ~ "9",
           grepl("091", AGEGEND_CHR) ~ "9",
           grepl("092", AGEGEND_CHR) ~ "9",
           grepl("093", AGEGEND_CHR) ~ "9",
           grepl("094", AGEGEND_CHR) ~ "9",
           grepl("095", AGEGEND_CHR) ~ "9",
           grepl("096", AGEGEND_CHR) ~ "9",
           grepl("097", AGEGEND_CHR) ~ "9",
           grepl("098", AGEGEND_CHR) ~ "9",
           grepl("099", AGEGEND_CHR) ~ "9",
           grepl("100", AGEGEND_CHR) ~ "9",))  %>% 
  
  
  mutate(Age10yr = case_when
         
         #Group for Age: Under 15
         (grepl("000", AGEGEND_CHR) ~ "0",
           grepl("001", AGEGEND_CHR) ~ "0",
           grepl("002", AGEGEND_CHR) ~ "0",
           grepl("003", AGEGEND_CHR) ~ "0",
           grepl("004", AGEGEND_CHR) ~ "0",
           grepl("005", AGEGEND_CHR) ~ "0",
           grepl("006", AGEGEND_CHR) ~ "0",
           grepl("007", AGEGEND_CHR) ~ "0",
           grepl("008", AGEGEND_CHR) ~ "0",
           grepl("009", AGEGEND_CHR) ~ "0",
           grepl("010", AGEGEND_CHR) ~ "0",
           grepl("011", AGEGEND_CHR) ~ "0",
           grepl("012", AGEGEND_CHR) ~ "0",
           grepl("013", AGEGEND_CHR) ~ "0",
           grepl("014", AGEGEND_CHR) ~ "0",
           
           #Group for Age Routes: 5-14
           grepl("015", AGEGEND_CHR) ~ "1",
           grepl("016", AGEGEND_CHR) ~ "1",
           grepl("017", AGEGEND_CHR) ~ "1",
           grepl("018", AGEGEND_CHR) ~ "1",
           grepl("019", AGEGEND_CHR) ~ "1",
           grepl("020", AGEGEND_CHR) ~ "1",
           grepl("021", AGEGEND_CHR) ~ "1",
           grepl("022", AGEGEND_CHR) ~ "1",
           grepl("023", AGEGEND_CHR) ~ "1",
           grepl("024", AGEGEND_CHR) ~ "1",
           
           
           #Group for Age Cat: 25 - 34
           grepl("025", AGEGEND_CHR) ~ "2",
           grepl("026", AGEGEND_CHR) ~ "2",
           grepl("027", AGEGEND_CHR) ~ "2",
           grepl("028", AGEGEND_CHR) ~ "2",
           grepl("029", AGEGEND_CHR) ~ "2",
           grepl("030", AGEGEND_CHR) ~ "2",
           grepl("031", AGEGEND_CHR) ~ "2",
           grepl("032", AGEGEND_CHR) ~ "2",
           grepl("033", AGEGEND_CHR) ~ "2",
           grepl("034", AGEGEND_CHR) ~ "2",
           
           #Group for Age Cat: 35 - 44
           grepl("035", AGEGEND_CHR) ~ "3",
           grepl("036", AGEGEND_CHR) ~ "3",
           grepl("037", AGEGEND_CHR) ~ "3",
           grepl("038", AGEGEND_CHR) ~ "3",
           grepl("039", AGEGEND_CHR) ~ "3",
           grepl("040", AGEGEND_CHR) ~ "3",
           grepl("041", AGEGEND_CHR) ~ "3",
           grepl("042", AGEGEND_CHR) ~ "3",
           grepl("043", AGEGEND_CHR) ~ "3",
           grepl("044", AGEGEND_CHR) ~ "3",
           
           #Group for Age Cat: 45 - 54
           grepl("045", AGEGEND_CHR) ~ "4",
           grepl("046", AGEGEND_CHR) ~ "4",
           grepl("047", AGEGEND_CHR) ~ "4",
           grepl("048", AGEGEND_CHR) ~ "4",
           grepl("049", AGEGEND_CHR) ~ "4",
           grepl("050", AGEGEND_CHR) ~ "4",
           grepl("051", AGEGEND_CHR) ~ "4",
           grepl("052", AGEGEND_CHR) ~ "4",
           grepl("053", AGEGEND_CHR) ~ "4",
           grepl("054", AGEGEND_CHR) ~ "4",
           
           #Group for Age Cat: 55 - 64
           grepl("055", AGEGEND_CHR) ~ "5",
           grepl("056", AGEGEND_CHR) ~ "5",
           grepl("057", AGEGEND_CHR) ~ "5",
           grepl("058", AGEGEND_CHR) ~ "5",
           grepl("059", AGEGEND_CHR) ~ "5",
           grepl("060", AGEGEND_CHR) ~ "5",
           grepl("061", AGEGEND_CHR) ~ "5",
           grepl("062", AGEGEND_CHR) ~ "5",
           grepl("063", AGEGEND_CHR) ~ "5",
           grepl("064", AGEGEND_CHR) ~ "5",
           
           #Group for 65+
           grepl("065", AGEGEND_CHR) ~ "6",
           grepl("066", AGEGEND_CHR) ~ "6",
           grepl("067", AGEGEND_CHR) ~ "6",
           grepl("068", AGEGEND_CHR) ~ "6",
           grepl("069", AGEGEND_CHR) ~ "6",
           grepl("070", AGEGEND_CHR) ~ "6",
           grepl("071", AGEGEND_CHR) ~ "6",
           grepl("072", AGEGEND_CHR) ~ "6",
           grepl("073", AGEGEND_CHR) ~ "6",
           grepl("074", AGEGEND_CHR) ~ "6",
           grepl("075", AGEGEND_CHR) ~ "6",
           grepl("076", AGEGEND_CHR) ~ "6",
           grepl("077", AGEGEND_CHR) ~ "6",
           grepl("078", AGEGEND_CHR) ~ "6",
           grepl("079", AGEGEND_CHR) ~ "6",
           grepl("080", AGEGEND_CHR) ~ "6",
           grepl("081", AGEGEND_CHR) ~ "6",
           grepl("082", AGEGEND_CHR) ~ "6",
           grepl("083", AGEGEND_CHR) ~ "6",
           grepl("084", AGEGEND_CHR) ~ "6",
           grepl("085", AGEGEND_CHR) ~ "6",
           grepl("086", AGEGEND_CHR) ~ "6",
           grepl("087", AGEGEND_CHR) ~ "6",
           grepl("088", AGEGEND_CHR) ~ "6",
           grepl("089", AGEGEND_CHR) ~ "6",
           grepl("090", AGEGEND_CHR) ~ "6",
           grepl("091", AGEGEND_CHR) ~ "6",
           grepl("092", AGEGEND_CHR) ~ "6",
           grepl("093", AGEGEND_CHR) ~ "6",
           grepl("094", AGEGEND_CHR) ~ "6",
           grepl("095", AGEGEND_CHR) ~ "6",
           grepl("096", AGEGEND_CHR) ~ "6",
           grepl("097", AGEGEND_CHR) ~ "6",
           grepl("098", AGEGEND_CHR) ~ "6",
           grepl("099", AGEGEND_CHR) ~ "6",
           grepl("100", AGEGEND_CHR) ~ "6",))  %>%
  
  
  
  mutate(AgeRtN = as.integer(AgeRT)) %>%
  mutate(Age10yrN = as.integer(Age10yr)) %>%
  rename(PopulationEST= AgeGendCount)

KENT_FIN <- KENT_BOUND2 %>% select(!c(`Age-Gender`, 'AGEGEND_CHR', 'Race_Sex'))

#view(KENT_ALL_LONG)

#Sussex Pivot
SUS_ALL_LONG <- SUS_ALL %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
SUS_Wh_LONG <- SUS_White %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
SUS_Bl_LONG <- SUS_Black %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
SUS_Oth_LONG <- SUS_Oth %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
SUS_Hisp_LONG <- SUS_Hisp %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')

#view(SUS_ALL_LONG)



SUS_BOUND <- rbind(SUS_Wh_LONG, SUS_Bl_LONG, SUS_Oth_LONG, SUS_Hisp_LONG) 
SUS_BOUND2 <- SUS_BOUND %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`)) %>%
  subset(AGEGEND_CHR!="Total") %>% 
  mutate(Age = parse_number(AGEGEND_CHR)) %>%
  mutate(Race_Sex = str_extract(AGEGEND_CHR, "['WM' 'WF' 'BM' 'BF'
                                'HM' 'HF' 'OM' 'OF']+")) %>%
  mutate(Race = str_extract(AGEGEND_CHR, "['W' 'B' 'H' 'O']+")) %>%
  mutate(Sex = str_extract(AGEGEND_CHR, "['M' 'F']+")) %>%
  mutate(County = "SUSSEX") %>%
  mutate(CountyDUM = as.integer(3))%>%
  mutate(RaceDUM = case_when(Race == 'W' ~ 0,
                             Race == 'B' ~ 1,
                             Race == 'H' ~ 5,
                             Race == 'O' ~ 7)) %>%
  mutate(SexDUM = if_else(Sex == "M", 0, 1))%>%
  mutate(AgeRT = case_when
         
         #Group for Age Adjustment: 0 - 4
         (grepl("000", AGEGEND_CHR) ~ "0",
           grepl("001", AGEGEND_CHR) ~ "0",
           grepl("002", AGEGEND_CHR) ~ "0",
           grepl("003", AGEGEND_CHR) ~ "0",
           grepl("004", AGEGEND_CHR) ~ "0",
           
           #Group for Age Adjustment: 5-14
           grepl("005", AGEGEND_CHR) ~ "1",
           grepl("006", AGEGEND_CHR) ~ "1",
           grepl("007", AGEGEND_CHR) ~ "1",
           grepl("008", AGEGEND_CHR) ~ "1",
           grepl("009", AGEGEND_CHR) ~ "1",
           grepl("010", AGEGEND_CHR) ~ "1",
           grepl("011", AGEGEND_CHR) ~ "1",
           grepl("012", AGEGEND_CHR) ~ "1",
           grepl("013", AGEGEND_CHR) ~ "1",
           grepl("014", AGEGEND_CHR) ~ "1",
           
           
           #Group for Age Adjustment: 15-24
           grepl("015", AGEGEND_CHR) ~ "2",
           grepl("016", AGEGEND_CHR) ~ "2",
           grepl("017", AGEGEND_CHR) ~ "2",
           grepl("018", AGEGEND_CHR) ~ "2",
           grepl("019", AGEGEND_CHR) ~ "2",
           grepl("020", AGEGEND_CHR) ~ "2",
           grepl("021", AGEGEND_CHR) ~ "2",
           grepl("022", AGEGEND_CHR) ~ "2",
           grepl("023", AGEGEND_CHR) ~ "2",
           grepl("024", AGEGEND_CHR) ~ "2",
           
           
           #Group for Age Adjustment: 25-34
           grepl("025", AGEGEND_CHR) ~ "3",
           grepl("026", AGEGEND_CHR) ~ "3",
           grepl("027", AGEGEND_CHR) ~ "3",
           grepl("028", AGEGEND_CHR) ~ "3",
           grepl("029", AGEGEND_CHR) ~ "3",
           grepl("030", AGEGEND_CHR) ~ "3",
           grepl("031", AGEGEND_CHR) ~ "3",
           grepl("032", AGEGEND_CHR) ~ "3",
           grepl("033", AGEGEND_CHR) ~ "3",
           grepl("034", AGEGEND_CHR) ~ "3",
           
           #Group for Age Adjustment: 35-44
           grepl("035", AGEGEND_CHR) ~ "4",
           grepl("036", AGEGEND_CHR) ~ "4",
           grepl("037", AGEGEND_CHR) ~ "4",
           grepl("038", AGEGEND_CHR) ~ "4",
           grepl("039", AGEGEND_CHR) ~ "4",
           grepl("040", AGEGEND_CHR) ~ "4",
           grepl("041", AGEGEND_CHR) ~ "4",
           grepl("042", AGEGEND_CHR) ~ "4",
           grepl("043", AGEGEND_CHR) ~ "4",
           grepl("044", AGEGEND_CHR) ~ "4",
           
           #Group for Age Adjustment: 45-54
           grepl("045", AGEGEND_CHR) ~ "5",
           grepl("046", AGEGEND_CHR) ~ "5",
           grepl("047", AGEGEND_CHR) ~ "5",
           grepl("048", AGEGEND_CHR) ~ "5",
           grepl("049", AGEGEND_CHR) ~ "5",
           grepl("050", AGEGEND_CHR) ~ "5",
           grepl("051", AGEGEND_CHR) ~ "5",
           grepl("052", AGEGEND_CHR) ~ "5",
           grepl("053", AGEGEND_CHR) ~ "5",
           grepl("054", AGEGEND_CHR) ~ "5",
           
           #Group for Age Adjustment: 55-64
           grepl("055", AGEGEND_CHR) ~ "6",
           grepl("056", AGEGEND_CHR) ~ "6",
           grepl("057", AGEGEND_CHR) ~ "6",
           grepl("058", AGEGEND_CHR) ~ "6",
           grepl("059", AGEGEND_CHR) ~ "6",
           grepl("060", AGEGEND_CHR) ~ "6",
           grepl("061", AGEGEND_CHR) ~ "6",
           grepl("062", AGEGEND_CHR) ~ "6",
           grepl("063", AGEGEND_CHR) ~ "6",
           grepl("064", AGEGEND_CHR) ~ "6",
           
           #Group for Age Adjustment: 65-74
           grepl("065", AGEGEND_CHR) ~ "7",
           grepl("066", AGEGEND_CHR) ~ "7",
           grepl("067", AGEGEND_CHR) ~ "7",
           grepl("068", AGEGEND_CHR) ~ "7",
           grepl("069", AGEGEND_CHR) ~ "7",
           grepl("070", AGEGEND_CHR) ~ "7",
           grepl("071", AGEGEND_CHR) ~ "7",
           grepl("072", AGEGEND_CHR) ~ "7",
           grepl("073", AGEGEND_CHR) ~ "7",
           grepl("074", AGEGEND_CHR) ~ "7",
           
           #Group for Age Adjustment: 75 - 84
           grepl("075", AGEGEND_CHR) ~ "8",
           grepl("076", AGEGEND_CHR) ~ "8",
           grepl("077", AGEGEND_CHR) ~ "8",
           grepl("078", AGEGEND_CHR) ~ "8",
           grepl("079", AGEGEND_CHR) ~ "8",
           grepl("080", AGEGEND_CHR) ~ "8",
           grepl("081", AGEGEND_CHR) ~ "8",
           grepl("082", AGEGEND_CHR) ~ "8",
           grepl("083", AGEGEND_CHR) ~ "8",
           grepl("084", AGEGEND_CHR) ~ "8",
           
           #Group for Age Adjustment: 85+
           grepl("085", AGEGEND_CHR) ~ "9",
           grepl("086", AGEGEND_CHR) ~ "9",
           grepl("087", AGEGEND_CHR) ~ "9",
           grepl("088", AGEGEND_CHR) ~ "9",
           grepl("089", AGEGEND_CHR) ~ "9",
           grepl("090", AGEGEND_CHR) ~ "9",
           grepl("091", AGEGEND_CHR) ~ "9",
           grepl("092", AGEGEND_CHR) ~ "9",
           grepl("093", AGEGEND_CHR) ~ "9",
           grepl("094", AGEGEND_CHR) ~ "9",
           grepl("095", AGEGEND_CHR) ~ "9",
           grepl("096", AGEGEND_CHR) ~ "9",
           grepl("097", AGEGEND_CHR) ~ "9",
           grepl("098", AGEGEND_CHR) ~ "9",
           grepl("099", AGEGEND_CHR) ~ "9",
           grepl("100", AGEGEND_CHR) ~ "9",))  %>% 
  
  
  mutate(Age10yr = case_when
         
         #Group for Age: Under 15
         (grepl("000", AGEGEND_CHR) ~ "0",
           grepl("001", AGEGEND_CHR) ~ "0",
           grepl("002", AGEGEND_CHR) ~ "0",
           grepl("003", AGEGEND_CHR) ~ "0",
           grepl("004", AGEGEND_CHR) ~ "0",
           grepl("005", AGEGEND_CHR) ~ "0",
           grepl("006", AGEGEND_CHR) ~ "0",
           grepl("007", AGEGEND_CHR) ~ "0",
           grepl("008", AGEGEND_CHR) ~ "0",
           grepl("009", AGEGEND_CHR) ~ "0",
           grepl("010", AGEGEND_CHR) ~ "0",
           grepl("011", AGEGEND_CHR) ~ "0",
           grepl("012", AGEGEND_CHR) ~ "0",
           grepl("013", AGEGEND_CHR) ~ "0",
           grepl("014", AGEGEND_CHR) ~ "0",
           
           #Group for Age Routes: 5-14
           grepl("015", AGEGEND_CHR) ~ "1",
           grepl("016", AGEGEND_CHR) ~ "1",
           grepl("017", AGEGEND_CHR) ~ "1",
           grepl("018", AGEGEND_CHR) ~ "1",
           grepl("019", AGEGEND_CHR) ~ "1",
           grepl("020", AGEGEND_CHR) ~ "1",
           grepl("021", AGEGEND_CHR) ~ "1",
           grepl("022", AGEGEND_CHR) ~ "1",
           grepl("023", AGEGEND_CHR) ~ "1",
           grepl("024", AGEGEND_CHR) ~ "1",
           
           
           #Group for Age Cat: 25 - 34
           grepl("025", AGEGEND_CHR) ~ "2",
           grepl("026", AGEGEND_CHR) ~ "2",
           grepl("027", AGEGEND_CHR) ~ "2",
           grepl("028", AGEGEND_CHR) ~ "2",
           grepl("029", AGEGEND_CHR) ~ "2",
           grepl("030", AGEGEND_CHR) ~ "2",
           grepl("031", AGEGEND_CHR) ~ "2",
           grepl("032", AGEGEND_CHR) ~ "2",
           grepl("033", AGEGEND_CHR) ~ "2",
           grepl("034", AGEGEND_CHR) ~ "2",
           
           #Group for Age Cat: 35 - 44
           grepl("035", AGEGEND_CHR) ~ "3",
           grepl("036", AGEGEND_CHR) ~ "3",
           grepl("037", AGEGEND_CHR) ~ "3",
           grepl("038", AGEGEND_CHR) ~ "3",
           grepl("039", AGEGEND_CHR) ~ "3",
           grepl("040", AGEGEND_CHR) ~ "3",
           grepl("041", AGEGEND_CHR) ~ "3",
           grepl("042", AGEGEND_CHR) ~ "3",
           grepl("043", AGEGEND_CHR) ~ "3",
           grepl("044", AGEGEND_CHR) ~ "3",
           
           #Group for Age Cat: 45 - 54
           grepl("045", AGEGEND_CHR) ~ "4",
           grepl("046", AGEGEND_CHR) ~ "4",
           grepl("047", AGEGEND_CHR) ~ "4",
           grepl("048", AGEGEND_CHR) ~ "4",
           grepl("049", AGEGEND_CHR) ~ "4",
           grepl("050", AGEGEND_CHR) ~ "4",
           grepl("051", AGEGEND_CHR) ~ "4",
           grepl("052", AGEGEND_CHR) ~ "4",
           grepl("053", AGEGEND_CHR) ~ "4",
           grepl("054", AGEGEND_CHR) ~ "4",
           
           #Group for Age Cat: 55 - 64
           grepl("055", AGEGEND_CHR) ~ "5",
           grepl("056", AGEGEND_CHR) ~ "5",
           grepl("057", AGEGEND_CHR) ~ "5",
           grepl("058", AGEGEND_CHR) ~ "5",
           grepl("059", AGEGEND_CHR) ~ "5",
           grepl("060", AGEGEND_CHR) ~ "5",
           grepl("061", AGEGEND_CHR) ~ "5",
           grepl("062", AGEGEND_CHR) ~ "5",
           grepl("063", AGEGEND_CHR) ~ "5",
           grepl("064", AGEGEND_CHR) ~ "5",
           
           #Group for 65+
           grepl("065", AGEGEND_CHR) ~ "6",
           grepl("066", AGEGEND_CHR) ~ "6",
           grepl("067", AGEGEND_CHR) ~ "6",
           grepl("068", AGEGEND_CHR) ~ "6",
           grepl("069", AGEGEND_CHR) ~ "6",
           grepl("070", AGEGEND_CHR) ~ "6",
           grepl("071", AGEGEND_CHR) ~ "6",
           grepl("072", AGEGEND_CHR) ~ "6",
           grepl("073", AGEGEND_CHR) ~ "6",
           grepl("074", AGEGEND_CHR) ~ "6",
           grepl("075", AGEGEND_CHR) ~ "6",
           grepl("076", AGEGEND_CHR) ~ "6",
           grepl("077", AGEGEND_CHR) ~ "6",
           grepl("078", AGEGEND_CHR) ~ "6",
           grepl("079", AGEGEND_CHR) ~ "6",
           grepl("080", AGEGEND_CHR) ~ "6",
           grepl("081", AGEGEND_CHR) ~ "6",
           grepl("082", AGEGEND_CHR) ~ "6",
           grepl("083", AGEGEND_CHR) ~ "6",
           grepl("084", AGEGEND_CHR) ~ "6",
           grepl("085", AGEGEND_CHR) ~ "6",
           grepl("086", AGEGEND_CHR) ~ "6",
           grepl("087", AGEGEND_CHR) ~ "6",
           grepl("088", AGEGEND_CHR) ~ "6",
           grepl("089", AGEGEND_CHR) ~ "6",
           grepl("090", AGEGEND_CHR) ~ "6",
           grepl("091", AGEGEND_CHR) ~ "6",
           grepl("092", AGEGEND_CHR) ~ "6",
           grepl("093", AGEGEND_CHR) ~ "6",
           grepl("094", AGEGEND_CHR) ~ "6",
           grepl("095", AGEGEND_CHR) ~ "6",
           grepl("096", AGEGEND_CHR) ~ "6",
           grepl("097", AGEGEND_CHR) ~ "6",
           grepl("098", AGEGEND_CHR) ~ "6",
           grepl("099", AGEGEND_CHR) ~ "6",
           grepl("100", AGEGEND_CHR) ~ "6",))  %>%
  
  
  
  mutate(AgeRtN = as.integer(AgeRT)) %>%
  mutate(Age10yrN = as.integer(Age10yr)) %>%
  rename(PopulationEST= AgeGendCount)

SUSSEX_FIN <- SUS_BOUND2 %>% select(!c(`Age-Gender`, 'AGEGEND_CHR', 'Race_Sex'))


DEBIND1 <- rbind(NCC_FIN, KENT_FIN, WILM_FIN, SUSSEX_FIN)




OneYrTwoVars <- function(YrStrat, by_var, expr, StratVar) {
  
DEBIND1 %>% 
filter(year==YrStrat) %>% 
group_by(across({{ by_var }})) %>% 
summarise("sum_{{expr}}" := sum({{ expr }})) %>% 
ggplot(aes(County, sum_PopulationEST, fill= {{StratVar}})) +
geom_col(position = "dodge") + scale_y_continuous(labels = scales::comma)}

  
Sex23 <- OneYrTwoVars(2023, c(County, Sex), PopulationEST, Sex)
Race23 <- OneYrTwoVars(2023, c(County, Race), PopulationEST, Race)
AgeGr23 <- OneYrTwoVars(2023, c(County, Age10yr), PopulationEST, Age10yr)

ggplotly(Sex23)


T <- DEBIND1 %>% mutate(yearNUM = as.numeric(year)) %>% 
  filter(yearNUM %in% 2020:2030) %>% group_by(year, County) %>% 
  summarise(sum_DEPop = sum(PopulationEST)) %>% 
              ggplot(aes(year, sum_DEPop, fill=County)) +
              geom_col() + scale_y_continuous(labels = scales::comma)
                       
ggplotly(T)


StateYrs <- function(YrStrats, by_var, expr, StratVar){DEBIND1 %>% 
    mutate(yearNUM = as.numeric(year)) %>% 
  filter(yearNUM %in% YrStrats) %>% group_by(across({{ by_var }})) %>% 
    summarise("sum_{{expr}}" := sum({{ expr }})) %>% 
    ggplot(aes(year, sum_PopulationEST , fill={{StratVar}})) +
    geom_col() + scale_y_continuous(labels = scales::comma)}


StateYrSex <- StateYrs(2010:2022, c(year, Sex), PopulationEST, Sex)
                           
ggplotly(StateYrSex)

Test <- function(by_var, strat, expr) {
  group_by(across({{ by_var }})) %>% 
  mutate("{{ strat }}_{{ expr }}" := sum({{ expr }})) %>% ungroup()}

C <- CreateDEPopEst(c(year, County), County, PopulationEST)


CreateDEPopEst <- function(by_var, strat, expr) {DEBIND1 %>% 
    group_by(across({{ by_var }})) %>% 
    mutate("{{ strat }}_{{ expr }}" := sum({{ expr }}))}

CreateDEPopT <- function(by_var, strat, expr) { 
    group_by(across({{ by_var }})) %>% 
    mutate("{{ strat }}_{{ expr }}" := sum({{ expr }}))}

StateEST <- CreateDEPopEst(c(year), DE, PopulationEST)
COEST <- CreateDEPopEst(c(year, County), CO, PopulationEST)

  filter(yearNUM %in% YrStrats) %>% group_by(across({{ by_var }})) %>% 
    summarise("sum_{{expr}}" := sum({{ expr }})) %>% 

DEBIND1 %>% 
  filter(year==YrStrat) %>% 
  group_by(across({{ by_var }})) %>% 
  summarise("sum_{{expr}}" := sum({{ expr }})) %>% 
  ggplot(aes(County, sum_PopulationEST, fill= {{StratVar}})) +
  geom_col(position = "dodge") + scale_y_continuous(labels = scales::comma)}





  my_summarise4 <- function(data, expr) {
    data %>% summarise(
      "mean_{{expr}}" := mean({{ expr }}),
      "sum_{{expr}}" := sum({{ expr }}),
      "n_{{expr}}" := n()
    )
  }
  my_summarise5 <- function(data, mean_var, sd_var) {
    data %>% 
      summarise(
        "mean_{{mean_var}}" := mean({{ mean_var }}), 
        "sd_{{sd_var}}" := sd({{ sd_var }})
      )
  }
  mutate(!! ({{ NewSumVar }}) := !!(sum({{OldVar}})))}


mutate(!! (new.col) := !!rlang::sym(old.col)

  S <- TestPiece(2023, c(County, Sex), PopulationEST)
  
  
  
  mutate(!! (new.col) := !!rlang::sym(old.col)
         
  
  
  testfunc <- function(df, old_col, new_col) {
    old_col <- enquo(old_col)
    new_col <- enquo(new_col)
    new_col_name <- quo_name(new_col)
    
  
group_by(across({{ by_var }}))

ggplotly(C)


DEBIND1 %>% filter(year==2023) %>% group_by(County, Sex) %>%  mutate(SexTest=sum(PopulationEST)) %>% 
  ggplot(aes(County, SexTest, fill=Sex)) +
  geom_col(position = "dodge")

DEBIND1 %>% filter(year==2023) %>% group_by(County, Sex) %>% summarise(sum(PopulationEST))
###DEFORGG <- DEBIND1 %>% group_by(year, County) %>% mutate(County_PopEST = sum(PopulationEST))%>% 
 # ungroup()%>% 
  #group_by(year) %>% mutate(DE_PopEST = sum(PopulationEST))%>% ungroup()%>%
  #mutate(Year = as.Date(ISOdate(year, 1, 1)))%>%
  #arrange(Year)

  
 # LOL <- ggplot(DEFORGG, aes(Year, County_PopEST, fill = County))+
  #geom_bar(stat = "identity")

#print(LOL)

#LOL + coord_flip()

#HELP <- DEFORGG %>% group_by(Year) %>% count(County, County_PopEST) %>% 
  #arrange(Year) 
#glimpse(HELP)

tabyl(DEBIND1, Age, Age10yr)


DEPop <- DEBIND1 %>% group_by(year, County) %>% mutate(County_PopEST = sum(PopulationEST))%>% 
  ungroup()%>% 
  group_by(year) %>% mutate(DE_PopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, County, Race)%>% mutate(County_RacePopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, Race)%>% mutate(DE_RacePopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, County, Race, Sex)%>% mutate(County_RaceSexPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, Race, Sex)%>% mutate(DE_RaceSexPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, County, Race, Age10yrN)%>% mutate(County_Race10YrPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, Race, Age10yrN)%>% mutate(DE_Race10YrPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, County, Race, AgeRtN)%>% mutate(County_RaceAgeRtPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, Race, AgeRtN)%>% mutate(DE_RaceAgeRtPopEST = sum(PopulationEST))%>% ungroup()%>%
  
  group_by(year, County, Sex)%>% mutate(County_SexPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, Sex)%>% mutate(DE_SexPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, County, Sex, Age10yrN)%>% mutate(County_Sex10YrPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, Sex, Age10yrN)%>% mutate(DE_Sex10YrPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, County, Sex, AgeRtN)%>% mutate(County_SexAgeRtPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, Sex, AgeRtN)%>% mutate(DE_SexAgeRtPopEST = sum(PopulationEST))%>% ungroup()%>%

  
  
  group_by(year, County, Race, Sex, Age10yrN)%>% mutate(County_RaceSex10YrPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, Race, Sex, Age10yrN)%>% mutate(DE_RaceSex10YrPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, County, Race, Sex, AgeRtN)%>% mutate(County_RaceSexAgeRtPopEST = sum(PopulationEST))%>% ungroup()%>%
  group_by(year, Sex, Race, AgeRtN)%>% mutate(DE_RaceSexAgeRtPopEST = sum(PopulationEST))%>% ungroup()


writexl::write_xlsx(DEBIND1, "/Users/joesimeone/Desktop/R Master/DEUngrouped.xlsx")
writexl::write_xlsx(DEPop, "/Users/joesimeone/Desktop/R Master/DEUngroupSUM.xlsx")
  
####TIB5 <- TEST %>% group_by(year, Race, AgeRtN) %>% select(AgeRtN, Race, DE_RaceAgeRtPopEST)

###DEFORGG <- DEBIND1 %>% group_by(year, County) %>% mutate(County_PopEST = sum(PopulationEST))%>% 
# ungroup()%>% 
#group_by(year) %>% mutate(DE_PopEST = sum(PopulationEST))%>% ungroup()%>%
#mutate(Year = as.Date(ISOdate(year, 1, 1)))%>%
#arrange(Year)


# LOL <- ggplot(DEFORGG, aes(Year, County_PopEST, fill = County))+
#geom_bar(stat = "identity")

#print(LOL)

#LOL + coord_flip()

#HELP <- DEFORGG %>% group_by(Year) %>% count(County, County_PopEST) %>% 
#arrange(Year) 
#glimpse(HELP)


                                                