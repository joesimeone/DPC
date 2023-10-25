install.packages("writexl")


library("tidyverse")    #Loads the TIDYVERSEEEEEEEEE
library("readxl") #Loads package to read xlsx and sheets
library("writexl") #Exports packages 

getwd()

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







#Begin Cleaning - Pivoting Long to create year variables

#Delaware Pivot
DE_ALL_LONG <- DE_ALL %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
DE_Wh_LONG <- DE_White %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
DE_Bl_LONG <- DE_Black %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
DE_Oth_LONG <- DE_Oth %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
DE_Hisp_LONG <- DE_Hisp %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')

#view(DE_ALL_LONG)

#NCC Pivot
NCC_ALL_LONG <- NCC_ALL %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
NCC_Wh_LONG <- NCC_White %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
NCC_Bl_LONG <- NCC_Black %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
NCC_Oth_LONG <- NCC_Oth %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
NCC_Hisp_LONG <- NCC_Hisp %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')

#view(NCC_ALL_LONG)

#Wilm Pivot
WILM_ALL_LONG <- WILM_ALL %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
WILM_Wh_LONG <- WILM_White %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
WILM_Bl_LONG <- WILM_Black %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
WILM_Oth_LONG <- WILM_Oth %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
WILM_Hisp_LONG <- WILM_Hisp %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')

#view(WILM_ALL_LONG)


#Kent Pivot
KENT_ALL_LONG <- KENT_ALL %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
KENT_Wh_LONG <- KENT_White %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
KENT_Bl_LONG <- KENT_Black %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
KENT_Oth_LONG <- KENT_Oth %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
KENT_Hisp_LONG <- KENT_Hisp %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')

#view(KENT_ALL_LONG)

#Sussex Pivot
SUS_ALL_LONG <- SUS_ALL %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
SUS_Wh_LONG <- SUS_White %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
SUS_Bl_LONG <- SUS_Black %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
SUS_Oth_LONG <- SUS_Oth %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')
SUS_Hisp_LONG <- SUS_Hisp %>% pivot_longer(cols = '2010':'2050', names_to = 'year', values_to = 'AgeGendCount')

#view(SUS_ALL_LONG)


#Once data is pivoted, we begin to clean for our purposes. This datastep is repeated for each county/ sheet,
#documented once at the DE level sheet.




#When we say all, we mean that all is the total population count for delaware (All Race, Eth Categories)
DE_ALL_LONG2 <- DE_ALL_LONG %>% mutate(AGEGEND_CHR = as.character(AGEGEND))   #Ensures Age Gend Var is actually character

DE_ALL_LONG3 <- DE_ALL_LONG2 %>%
  mutate(
    Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",       #Searches char variable for M/F, assigns value of 0 or 1 to sex variable
                    grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>%     #Drop Na - Eliminates total variable leftover from spreadsheet
  mutate(AgeRT = case_when
         
#Group for Age Adjustment: 0 - 4                                 #Creates Variable AgeRt, assigns different values for different age groups based on values in AGEGEND_CHR Variable
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
  
  
  mutate(Age10yr = case_when              #Creates Variable Age10yr, assigns different values for different age groups based on values in AGEGEND_CHR Variable
         
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
           
  
  mutate(PopSex = as.integer(Sex)) %>%  #Makes new variables integers
  mutate(PopAgeRt = as.integer(AgeRT)) %>% 
  mutate(PopAge10yr = as.integer(Age10yr)) %>%
 mutate(Age = parse_number(AGEGEND_CHR)) %>% #Finds numbers in AgeGend_Chr for Age variable
  mutate(Race = 100) %>% #Adds a Race Variable for ???? reasons
  rename(DE_POP = AgeGendCount) # Renames AgeGendCount to more clear variable
 
#view(DE_ALL_LONG3)



  
  #Finishes up the process and cleaning for total population,
  #takes the stuff we want so we can merge later
  DE_ALLCLEAN <- DE_ALL_LONG3 %>%  
    select(year, Age, DE_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
              year == "2016" | year == "2017" | year == "2018" |
           year == "2019" | year == "2020" | year == "2021" )
  
  
  
  
  #white population
  
  DE_Wh_LONG2 <- DE_Wh_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  DE_Wh_LONG3 <- DE_Wh_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
             grepl("065", AGEGEND_CHR) ~ "6",
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 0) %>%
    rename(WH_POP = AgeGendCount)
  
  #view(DE_Wh_LONG3)
  
  
  
  
  
  DE_WHCLEAN <- DE_Wh_LONG3 %>%  
    select(year, Age, WH_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  #view(DE_WHCLEAN)
  
  #Black population
  
  DE_Bl_LONG2 <- DE_Bl_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  DE_Bl_LONG3 <- DE_Bl_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 1) %>%
    rename(BL_POP = AgeGendCount)
  
  #view(DE_Bl_LONG3)
  
  
  
  
  
  DE_BLCLEAN <- DE_Bl_LONG3 %>%  
    select(year, Age, BL_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  #view(DE_BLCLEAN)
  
  
  #Hispanic Population
  
  
  DE_Hisp_LONG2 <- DE_Hisp_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  DE_Hisp_LONG3 <- DE_Hisp_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 5) %>%
    rename(HIS_POP = AgeGendCount)
  
  #view(DE_Hisp_LONG3)
  
  
  
  
  
  DE_HICLEAN <- DE_Hisp_LONG3 %>%  
    select(year, Age, HIS_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  #Other Race
  
  DE_Oth_LONG2 <- DE_Oth_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  DE_Oth_LONG3 <- DE_Oth_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 8) %>%
    rename(OTH_POP = AgeGendCount)
  
  #view(DE_Oth_LONG3)
  
  
  
  
  
  DE_OTHCLEAN <- DE_Oth_LONG3 %>%  
    select(year, Age, OTH_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  DE_Race_Join <- DE_ALLCLEAN %>% left_join(DE_WHCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                                               'PopAge10yr')) %>%
    left_join(DE_BLCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                 'PopAge10yr')) %>%
    left_join(DE_HICLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                 'PopAge10yr')) %>%
    left_join(DE_OTHCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                  'PopAge10yr')) %>%
    mutate(Year = as.Date(ISOdate(year, 1, 1)))
  
  
  
  
  
#Counties - Clean and Merge, By County
  
  
  #New Castle - Clean and Merge
  NCC_ALL_LONG2 <- NCC_ALL_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  NCC_ALL_LONG3 <- NCC_ALL_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 100) %>%
    rename(NCC_POP = AgeGendCount)
  
  #view(NCC_ALL_LONG3)
  
  
  
  
  
  NCC_ALLCLEAN <- NCC_ALL_LONG3 %>%  
    select(year, Age, NCC_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  
  
  #white population
  
  NCC_Wh_LONG2 <- NCC_Wh_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  NCC_Wh_LONG3 <- NCC_Wh_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
             grepl("065", AGEGEND_CHR) ~ "6",
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 0) %>%
    rename(NCCWH_POP = AgeGendCount)
  
  #view(DE_Wh_LONG3)
  
  
  
  
  
  NCC_WHCLEAN <- NCC_Wh_LONG3 %>%  
    select(year, Age, NCCWH_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  #view(DE_WHCLEAN)
  
  #Black population
  
  NCC_Bl_LONG2 <- NCC_Bl_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  NCC_Bl_LONG3 <- NCC_Bl_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 1) %>%
    rename(NCCBL_POP = AgeGendCount)
  
  #view(DE_Bl_LONG3)
  
  
  
  
  
  NCC_BLCLEAN <- NCC_Bl_LONG3 %>%  
    select(year, Age, NCCBL_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  #view(DE_BLCLEAN)
  
  
  #Hispanic Population
  
  
  NCC_Hisp_LONG2 <- NCC_Hisp_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  NCC_Hisp_LONG3 <- NCC_Hisp_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 5) %>%
    rename(NCCHIS_POP = AgeGendCount)
  
  #view(DE_Hisp_LONG3)
  
  
  
  
  
  NCC_HICLEAN <- NCC_Hisp_LONG3 %>%  
    select(year, Age, NCCHIS_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  #Other Race
  
  NCC_Oth_LONG2 <- NCC_Oth_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  NCC_Oth_LONG3 <- NCC_Oth_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 8) %>%
    rename(NCCOTH_POP = AgeGendCount)
  
  #view(DE_Oth_LONG3)
  
  
  
  
  
  NCC_OTHCLEAN <- NCC_Oth_LONG3 %>%  
    select(year, Age, NCCOTH_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  
  NCC_Race_Join <- NCC_ALLCLEAN %>% left_join(NCC_WHCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                                                'PopAge10yr')) %>%
    left_join(NCC_BLCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                 'PopAge10yr')) %>%
    left_join(NCC_HICLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                 'PopAge10yr')) %>%
    left_join(NCC_OTHCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                 'PopAge10yr')) %>%
    mutate(Year = as.Date(ISOdate(year, 1, 1)))
  
  
  
  
  
  #Kent - Clean for Merge
  
  
  KENT_ALL_LONG2 <- KENT_ALL_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  KENT_ALL_LONG3 <- KENT_ALL_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 100) %>%
    rename(KENT_POP = AgeGendCount)
  
  #view(KENT_ALL_LONG3)
  
  
  
  
  
  KENT_ALLCLEAN <- KENT_ALL_LONG3 %>%  
    select(year, Age, KENT_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  
  
  #white population
  
  KENT_Wh_LONG2 <- KENT_Wh_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  KENT_Wh_LONG3 <- KENT_Wh_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
             grepl("065", AGEGEND_CHR) ~ "6",
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 0) %>%
    rename(KENTWH_POP = AgeGendCount)
  
  #view(DE_Wh_LONG3)
  
  
  
  
  
  KENT_WHCLEAN <- KENT_Wh_LONG3 %>%  
    select(year, Age, KENTWH_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  #view(DE_WHCLEAN)
  
  #Black population
  
  KENT_Bl_LONG2 <- KENT_Bl_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  KENT_Bl_LONG3 <- KENT_Bl_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 1) %>%
    rename(KENTBL_POP = AgeGendCount)
  
  #view(DE_Bl_LONG3)
  
  
  
  
  
  KENT_BLCLEAN <- KENT_Bl_LONG3 %>%  
    select(year, Age, KENTBL_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  #view(DE_BLCLEAN)
  
  
  #Hispanic Population
  
  
  KENT_Hisp_LONG2 <- KENT_Hisp_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  KENT_Hisp_LONG3 <- KENT_Hisp_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 5) %>%
    rename(KENTHIS_POP = AgeGendCount)
  
  #view(DE_Hisp_LONG3)
  
  
  
  
  
  KENT_HICLEAN <- KENT_Hisp_LONG3 %>%  
    select(year, Age, KENTHIS_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  #Other Race
  
  KENT_Oth_LONG2 <- KENT_Oth_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  KENT_Oth_LONG3 <- KENT_Oth_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 8) %>%
    rename(KENTOTH_POP = AgeGendCount)
  
  #view(DE_Oth_LONG3)
  
  
  
  
  
  KENT_OTHCLEAN <- KENT_Oth_LONG3 %>%  
    select(year, Age, KENTOTH_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  
  KENT_Race_Join <- KENT_ALLCLEAN %>% left_join(KENT_WHCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                                                     'PopAge10yr')) %>%
    left_join(KENT_BLCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                   'PopAge10yr')) %>%
    left_join(KENT_HICLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                   'PopAge10yr')) %>%
    left_join(KENT_OTHCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                    'PopAge10yr')) %>%
    mutate(Year = as.Date(ISOdate(year, 1, 1)))
  
  
  
  #Sussex
  
  SUS_ALL_LONG2 <- SUS_ALL_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  SUS_ALL_LONG3 <- SUS_ALL_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 100) %>%
    rename(SUS_POP = AgeGendCount)
  
  #view(SUS_ALL_LONG3)
  
  
  
  
  
  SUS_ALLCLEAN <- SUS_ALL_LONG3 %>%  
    select(year, Age, SUS_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  
  
  #white population
  
  SUS_Wh_LONG2 <- SUS_Wh_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  SUS_Wh_LONG3 <- SUS_Wh_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
             grepl("065", AGEGEND_CHR) ~ "6",
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 0) %>%
    rename(SUSWH_POP = AgeGendCount)
  
  #view(DE_Wh_LONG3)
  
  
  
  
  
  SUS_WHCLEAN <- SUS_Wh_LONG3 %>%  
    select(year, Age, SUSWH_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  #view(DE_WHCLEAN)
  
  #Black population
  
  SUS_Bl_LONG2 <- SUS_Bl_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  SUS_Bl_LONG3 <- SUS_Bl_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 1) %>%
    rename(SUSBL_POP = AgeGendCount)
  
  #view(DE_Bl_LONG3)
  
  
  
  
  
  SUS_BLCLEAN <- SUS_Bl_LONG3 %>%  
    select(year, Age, SUSBL_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  #view(DE_BLCLEAN)
  
  
  #Hispanic Population
  
  
  SUS_Hisp_LONG2 <- SUS_Hisp_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  SUS_Hisp_LONG3 <- SUS_Hisp_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 5) %>%
    rename(SUSHIS_POP = AgeGendCount)
  
  #view(DE_Hisp_LONG3)
  
  
  
  
  
  SUS_HICLEAN <- SUS_Hisp_LONG3 %>%  
    select(year, Age, SUSHIS_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  #Other Race
  
  SUS_Oth_LONG2 <- SUS_Oth_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  SUS_Oth_LONG3 <- SUS_Oth_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 8) %>%
    rename(SUSOTH_POP = AgeGendCount)
  
  #view(DE_Oth_LONG3)
  
  
  
  
  
  SUS_OTHCLEAN <- SUS_Oth_LONG3 %>%  
    select(year, Age, SUSOTH_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  
  SUS_Race_Join <- SUS_ALLCLEAN %>% left_join(SUS_WHCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                                                  'PopAge10yr')) %>%
    left_join(SUS_BLCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                  'PopAge10yr')) %>%
    left_join(SUS_HICLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                  'PopAge10yr')) %>%
    left_join(SUS_OTHCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                   'PopAge10yr')) %>%
    mutate(Year = as.Date(ISOdate(year, 1, 1)))
  
  #Wilmington Clean for merge
  
  WILM_ALL_LONG2 <- WILM_ALL_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  WILM_ALL_LONG3 <- WILM_ALL_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 100) %>%
    rename(WILM_POP = AgeGendCount)
  
  #view(WILM_ALL_LONG3)
  
  
  
  
  
  WILM_ALLCLEAN <- WILM_ALL_LONG3 %>%  
    select(year, Age, WILM_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  
  
  #white population
  
  WILM_Wh_LONG2 <- WILM_Wh_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  WILM_Wh_LONG3 <- WILM_Wh_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
             grepl("065", AGEGEND_CHR) ~ "6",
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 0) %>%
    rename(WILMWH_POP = AgeGendCount)
  
  #view(DE_Wh_LONG3)
  
  
  
  
  
  WILM_WHCLEAN <- WILM_Wh_LONG3 %>%  
    select(year, Age, WILMWH_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  #view(DE_WHCLEAN)
  
  #Black population
  
  WILM_Bl_LONG2 <- WILM_Bl_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  WILM_Bl_LONG3 <- WILM_Bl_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 1) %>%
    rename(WILMBL_POP = AgeGendCount)
  
  #view(DE_Bl_LONG3)
  
  
  
  
  
  WILM_BLCLEAN <- WILM_Bl_LONG3 %>%  
    select(year, Age, WILMBL_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  #view(DE_BLCLEAN)
  
  
  #Hispanic Population
  
  
  WILM_Hisp_LONG2 <- WILM_Hisp_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  WILM_Hisp_LONG3 <- WILM_Hisp_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 5) %>%
    rename(WILMHIS_POP = AgeGendCount)
  
  #view(DE_Hisp_LONG3)
  
  
  
  
  
  WILM_HICLEAN <- WILM_Hisp_LONG3 %>%  
    select(year, Age, WILMHIS_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  #Other Race
  
  WILM_Oth_LONG2 <- WILM_Oth_LONG %>% mutate(AGEGEND_CHR = as.character(`Age-Gender`))
  
  WILM_Oth_LONG3 <- WILM_Oth_LONG2 %>%
    mutate(
      Sex = case_when(grepl("M", AGEGEND_CHR) ~ "0",
                      grepl("F", AGEGEND_CHR) ~ "1",))  %>% drop_na(Sex) %>% 
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
    
    
    mutate(PopSex = as.integer(Sex)) %>%
    mutate(PopAgeRt = as.integer(AgeRT)) %>%
    mutate(PopAge10yr = as.integer(Age10yr)) %>%
    mutate(Age = parse_number(AGEGEND_CHR)) %>%
    mutate(Race = 8) %>%
    rename(WILMOTH_POP = AgeGendCount)
  
  #view(DE_Oth_LONG3)
  
  
  
  
  
  WILM_OTHCLEAN <- WILM_Oth_LONG3 %>%  
    select(year, Age, WILMOTH_POP, PopSex, PopAgeRt, PopAge10yr) %>%
    filter(year == "2010" | year == "2011" | year == "2012" | year == "2013"|
             year == "2014" | year == "2015" |
             year == "2016" | year == "2017" | year == "2018" |
             year == "2019" | year == "2020" | year == "2021" )
  
  
  
  WILM_Race_Join <- WILM_ALLCLEAN %>% left_join(WILM_WHCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                                                     'PopAge10yr')) %>%
    left_join(WILM_BLCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                   'PopAge10yr')) %>%
    left_join(WILM_HICLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                   'PopAge10yr')) %>%
    left_join(WILM_OTHCLEAN, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                    'PopAge10yr')) %>%
    mutate(Year = as.Date(ISOdate(year, 1, 1)))
  
  view(WILM_Race_Join)
  
  

  
  
  
  
  
  
  #FINISHED Clean Data - Formatted for summary - Joins finished data together
  ALL_Race_Join <- DE_Race_Join %>% left_join(NCC_Race_Join, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                                                      'PopAge10yr', 'Year')) %>%
    left_join(KENT_Race_Join, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                     'PopAge10yr', 'Year')) %>%
    left_join(SUS_Race_Join, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                     'PopAge10yr', 'Year')) %>%
    left_join(WILM_Race_Join, by = c('year', 'Age', 'PopSex', 'PopAgeRt',
                                     'PopAge10yr', 'Year')) %>% 
    
    group_by(Year, PopSex) %>% 
    mutate()
  
  
  
  
  #view(ALL_Race_Join)
  #glimpse(ALL_Race_Join)
  
  
  #Creates Sums State, County, Race data by Year 
DEANNUAL <- ALL_Race_Join %>% group_by(Year) %>% summarize(Anntotal = sum(DE_POP), AnnWH = sum(
  WH_POP), AnnBH = sum(BL_POP), AnnHISP = sum(HIS_POP), AnnOTH = sum(OTH_POP), AnnNCCPop = sum(NCC_POP), AnnNCCWH = sum(
    NCCWH_POP), AnnNCCBH = sum(NCCBL_POP), AnnNCCHISP = sum(NCCHIS_POP), AnnNCCOTH = sum(NCCOTH_POP), AnnKENTPop = sum(KENT_POP), AnnKENTWH = sum(
      KENTWH_POP), AnnKENTBH = sum(KENTBL_POP), AnnKENTHISP = sum(KENTHIS_POP), AnnKENTOTH = sum(KENTOTH_POP), AnnSUSPop = sum(SUS_POP), AnnSUSWH = sum(
        SUSWH_POP), AnnSUSBH = sum(SUSBL_POP), AnnSUSHISP = sum(SUSHIS_POP), AnnSUSOTH = sum(SUSOTH_POP), AnnWILMPop = sum(WILM_POP), AnnWILMWH = sum(
          WILMWH_POP), AnnWILMBH = sum(WILMBL_POP), AnnWILMHISP = sum(WILMHIS_POP), AnnWILMOTH = sum(WILMOTH_POP))



 
#Creates Sums State, County, Race data by Year & Age adjustment groups
 DEAgeAdjust <- ALL_Race_Join %>% group_by(Year,PopAgeRt) %>% summarize(AnnRtYrAgetotal = sum(DE_POP), AnnRtYrAgeWH = sum(
   WH_POP), AnnRtYrAgeBH = sum(BL_POP), AnnRtYrAgeHISP = sum(HIS_POP), AnnRtYrAgeOTH = sum(OTH_POP), AnnRtYrAgeNCCPop = sum(NCC_POP), AnnRtYrAgeNCCWH = sum(
     NCCWH_POP), AnnRtYrAgeNCCBH = sum(NCCBL_POP), AnnRtYrAgeNCCHISP = sum(NCCHIS_POP), AnnRtYrAgeNCCOTH = sum(NCCOTH_POP), AnnRtYrAgeKENTPop = sum(KENT_POP), AnnRtYrAgeKENTWH = sum(
       KENTWH_POP), AnnRtYrAgeKENTBH = sum(KENTBL_POP), AnnRtYrAgeKENTHISP = sum(KENTHIS_POP), AnnRtYrAgeKENTOTH = sum(KENTOTH_POP), AnnRtYrAgeSUSPop = sum(SUS_POP), AnnRtYrAgeSUSWH = sum(
         SUSWH_POP), AnnRtYrAgeSUSBH = sum(SUSBL_POP), AnnRtYrAgeSUSHISP = sum(SUSHIS_POP), AnnRtYrAgeSUSOTH = sum(SUSOTH_POP), AnnRtYrAgeWILMPop = sum(WILM_POP), AnnRtYrAgeWILMWH = sum(
           WILMWH_POP), AnnRtYrAgeWILMBH = sum(WILMBL_POP), AnnRtYrAgeWILMHISP = sum(WILMHIS_POP), AnnRtYrAgeWILMOTH = sum(WILMOTH_POP))
 
 

                                                                                          
                                                                                    

 
 #Creates Sums State, County, Race data by Year & 10 Year age group
 DEAge10Yr <- ALL_Race_Join %>% group_by(Year,PopAge10yr) %>% summarize(TenYrAgetotal = sum(DE_POP), TenYrAgeWH = sum(
   WH_POP), TenYrAgeBH = sum(BL_POP), TenYrAgeHISP = sum(HIS_POP), TenYrAgeOTH = sum(OTH_POP), TenYrAgeNCCPop = sum(NCC_POP), TenYrAgeNCCWH = sum(
     NCCWH_POP), TenYrAgeNCCBH = sum(NCCBL_POP), TenYrAgeNCCHISP = sum(NCCHIS_POP), TenYrAgeNCCOTH = sum(NCCOTH_POP), TenYrAgeKENTPop = sum(KENT_POP), TenYrAgeKENTWH = sum(
       KENTWH_POP), TenYrAgeKENTBH = sum(KENTBL_POP), TenYrAgeKENTHISP = sum(KENTHIS_POP), TenYrAgeKENTOTH = sum(KENTOTH_POP), TenYrAgeSUSPop = sum(SUS_POP), TenYrAgeSUSWH = sum(
         SUSWH_POP), TenYrAgeSUSBH = sum(SUSBL_POP), TenYrAgeSUSHISP = sum(SUSHIS_POP), TenYrAgeSUSOTH = sum(SUSOTH_POP), TenYrAgeWILMPop = sum(WILM_POP), TenYrAgeWILMWH = sum(
           WILMWH_POP), TenYrAgeWILMBH = sum(WILMBL_POP), TenYrAgeWILMHISP = sum(WILMHIS_POP), TenYrAgeWILMOTH = sum(WILMOTH_POP))
 
 #view(DEAgeAdjust)
  
#DEAgeAdjustOUT <- write_xlsx(DEAgeAdjust, path = tempfile(fileext = "Age.xlsx"),
                             #col_names = TRUE).   ####Bad but works####


#Exporst Summarized Data 
writexl::write_xlsx(DEAgeAdjust, "/Users/joesimeone/Desktop/R Master/AgeAdj.xlsx")
writexl::write_xlsx(DEAge10Yr, "/Users/joesimeone/Desktop/R Master/Age10Yr.xlsx")
writexl::write_xlsx(DEANNUAL, "/Users/joesimeone/Desktop/R Master/AgeAdjSex.xlsx")



###We have now gotten ourselves into a tried and true mess hahaha - This code gives us 
##A way to format sex variables such that they match the race variables and can be used in that weird ungrouped SAS code.

DEANNUAL_SEX <- ALL_Race_Join %>% group_by(Year, PopSex) %>% summarize(AnnSextotal= sum(DE_POP), AnnSexNCCPop = sum(NCC_POP),
                                                                       AnnSexKentPop= sum(KENT_POP), AnnSexSusPop= sum(SUS_POP))  
##ANNUAL
DESexScrapsM <- DEANNUAL_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSextotal) %>% 
  rename(AnnMaleTotal='0') %>% rename(AnnFemaleTotal='1') %>% select(Year, AnnMaleTotal) %>% drop_na()

DESexScrapsF <- DEANNUAL_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSextotal) %>% 
  rename(AnnMaleTotal='0') %>% rename(AnnFemaleTotal='1') %>% select(Year, AnnFemaleTotal) %>% drop_na()

DESexScrapsJ <- DESexScrapsM %>% left_join(DESexScrapsF, by=c('Year'))

##NCC
NCCSexScrapsM <- DEANNUAL_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexNCCPop) %>% 
  rename(NCCMaleTotal='0') %>% rename(NCCFemaleTotal='1') %>% select(Year, NCCMaleTotal) %>% drop_na()

NCCSexScrapsF <- DEANNUAL_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexNCCPop) %>% 
  rename(NCCMaleTotal='0') %>% rename(NCCFemaleTotal='1') %>% select(Year, NCCFemaleTotal) %>% drop_na()

NCCSexScrapsJ <- NCCSexScrapsM %>% left_join(NCCSexScrapsF, by=c('Year'))


##SUS
SUSSexScrapsM <- DEANNUAL_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexSusPop) %>% 
  rename(SUSMaleTotal='0') %>% rename(SUSFemaleTotal='1') %>% select(Year, SUSMaleTotal) %>% drop_na()

SUSSexScrapsF <- DEANNUAL_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexSusPop) %>% 
  rename(SUSMaleTotal='0') %>% rename(SUSFemaleTotal='1') %>% select(Year, SUSFemaleTotal) %>% drop_na()

SUSSexScrapsJ <- SUSSexScrapsM %>% left_join(SUSSexScrapsF, by=c('Year'))

##KENT
KSexScrapsM <- DEANNUAL_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexKentPop) %>% 
  rename(KentMaleTotal='0') %>% rename(KentFemaleTotal='1') %>% select(Year, KentMaleTotal) %>% drop_na()

KSexScrapsF <- DEANNUAL_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexKentPop) %>% 
  rename(KentMaleTotal='0') %>% rename(KentFemaleTotal='1') %>% select(Year, KentFemaleTotal) %>% drop_na()

KSexScrapsJ <- KSexScrapsM %>% left_join(KSexScrapsF, by=c('Year'))


DE_AnnualSexSum <- DESexScrapsJ %>% left_join(NCCSexScrapsJ, by=c('Year')) %>% 
  left_join(SUSSexScrapsJ, by=c('Year')) %>%
  left_join(KSexScrapsJ, by=c('Year')) 
  

#####Same fucked up process for Sex & Age Adj Groups
DEAgeAdj_SEX <- ALL_Race_Join %>% group_by(Year, PopSex, PopAgeRt) %>% summarize(AnnSextotal= sum(DE_POP), AnnSexNCCPop = sum(NCC_POP),
                                                                       AnnSexKentPop= sum(KENT_POP), AnnSexSusPop= sum(SUS_POP))  
#DE
DESexScrapsAgeAdjM <- DEAgeAdj_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSextotal) %>% 
  rename(AnnMaleTotal='0') %>% rename(AnnFemaleTotal='1') %>% select(Year, PopAgeRt, AnnMaleTotal) %>% drop_na()

DESexScrapsAgeAdjF <- DEAgeAdj_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSextotal) %>% 
  rename(AnnMaleTotal='0') %>% rename(AnnFemaleTotal='1') %>% select(Year, PopAgeRt, AnnFemaleTotal) %>% drop_na()

DESexScrapsAgeAdjJ <- DESexScrapsAgeAdjM %>% left_join(DESexScrapsAgeAdjF, by=c('Year', 'PopAgeRt'))

##NCC
NCCSexScrapsAgeAdjM <- DEAgeAdj_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexNCCPop) %>% 
  rename(NCCMaleTotal='0') %>% rename(NCCFemaleTotal='1') %>% select(Year, PopAgeRt, NCCMaleTotal) %>% drop_na()

NCCSexScrapsAgeAdjF <- DEAgeAdj_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexNCCPop) %>% 
  rename(NCCMaleTotal='0') %>% rename(NCCFemaleTotal='1') %>% select(Year, PopAgeRt, NCCFemaleTotal) %>% drop_na()

NCCSexScrapsAgeAdjJ <- NCCSexScrapsAgeAdjM %>% left_join(NCCSexScrapsAgeAdjF, by=c('Year', 'PopAgeRt'))

##SUS
SUSSexScrapsAgeAdjM <- DEAgeAdj_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexSusPop) %>% 
  rename(SusMaleTotal='0') %>% rename(SusFemaleTotal='1') %>% select(Year, PopAgeRt, SusMaleTotal) %>% drop_na()

SUSSexScrapsAgeAdjF <- DEAgeAdj_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexSusPop) %>% 
  rename(SusMaleTotal='0') %>% rename(SusFemaleTotal='1') %>% select(Year, PopAgeRt, SusFemaleTotal) %>% drop_na()

SUSSexScrapsAgeAdjJ <- SUSSexScrapsAgeAdjM %>% left_join(SUSSexScrapsAgeAdjF, by=c('Year', 'PopAgeRt'))

##SUS
KSexScrapsAgeAdjM <- DEAgeAdj_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexKentPop) %>% 
  rename(KentMaleTotal='0') %>% rename(KentFemaleTotal='1') %>% select(Year, PopAgeRt, KentMaleTotal) %>% drop_na()

KSexScrapsAgeAdjF <- DEAgeAdj_SEX %>% pivot_wider(names_from = PopSex, values_from=AnnSexKentPop) %>% 
  rename(KentMaleTotal='0') %>% rename(KentFemaleTotal='1') %>% select(Year, PopAgeRt, KentFemaleTotal) %>% drop_na()

KSexScrapsAgeAdjJ <- KSexScrapsAgeAdjM %>% left_join(KSexScrapsAgeAdjF, by=c('Year', 'PopAgeRt'))


DE_AnnualSexAgeAdjSum <- DESexScrapsAgeAdjJ %>% left_join(NCCSexScrapsAgeAdjJ, by=c('Year', 'PopAgeRt')) %>% 
  left_join(SUSSexScrapsAgeAdjJ, by=c('Year', 'PopAgeRt')) %>%
  left_join(KSexScrapsAgeAdjJ, by=c('Year', 'PopAgeRt')) 




#Exporst Summarized Data 
writexl::write_xlsx(DEAgeAdjust, "/Users/joesimeone/Desktop/R Master/AgeAdj.xlsx")
writexl::write_xlsx(DEAge10Yr, "/Users/joesimeone/Desktop/R Master/Age10Yr.xlsx")
writexl::write_xlsx(DEANNUAL, "/Users/joesimeone/Desktop/R Master/DEANNUAL.xlsx")
writexl::write_xlsx(DE_AnnualSexSum, "/Users/joesimeone/Desktop/R Master/DPC/DEAnnSexSum.xlsx")
writexl::write_xlsx(DE_AnnualSexAgeAdjSum, "/Users/joesimeone/Desktop/R Master/DPC/DEAnnAgeAdjSex.xlsx")
                                       