install.packages("tidycensus")
library("tidycensus")
library("tidyverse")
library("readxl") #Loads package to read xlsx and sheets
library("writexl")
library("janitor") 
library("plotly")

##census_api_key("72ad561b5ab26e533b49ba6449dc43bd7712c889",
               ##install = TRUE)

####Following 2 datasets take decenial census and est populations as of Jul 1 (Middle of Yr)
### Because they estimate from different bases, direct comparison is not advised.... What do then?

Base2010PopEstST <- read_csv("US Census Estimates, States, 2010 - 2020.csv")
Base2010PopEstSTT <- read_csv("US Census Estimates, States, 2010 - 2020.csv")

DE_ALL <- read_excel("/Users/joesimeone/Desktop/R Master/DPC/DPC_Population Estimates.xlsx", sheet = "Delaware-All")

Base2020PopEstST <-read_excel("/Users/joesimeone/Desktop/R Master/DPC/US Census, Population By State, 2020-2022.xlsx", 
                              sheet = "EST 2022 POP")


##Narrow datasets to DE and population then pivot long

DEBase2010St <- Base2010PopEstST %>% filter(NAME == "Delaware") %>%
select(NAME, matches("POPESTIMATE")) %>% pivot_longer(cols = 'POPESTIMATE2010':'POPESTIMATE2020', names_to='YearCH', values_to='PopEst') %>% 
  mutate(Year = parse_number(YearCH)) %>% select(!('YearCH')) %>% rename(State=NAME)


DEBase2020St <- Base2020PopEstST %>% clean_names() %>% 
  filter(geographic_area == '.Delaware') %>% pivot_longer(cols = 'x2020':'x2022',
                                                          names_to = 'YearCh', 
                                                          values_to = 'PopEst') %>% 
  
                              mutate(Year=parse_number(YearCh)) %>% 
  mutate(State=recode(geographic_area, '.Delaware' = "Delaware")) %>% select(Year, State, PopEst)
                              
  



filter('Geographic Area' == ".Delaware")

glimpse(DEBase2020St)



total_population_20 <- get_decennial(
  geography = "state", 
  state = "DE",
  variables = "P001001",
  year = 2020,
  sumfile = "pl"
)
view(total_population_20)

v16 <- load_variables(2021, "acs5", cache = TRUE)

rofl <- get_acs(
  geography = "county", 
  state = "DE",
  variables = "B03003_003",
  year = 2020
) %>%  mutate(TotHisp=sum(estimate))
  
summarize(rofl, sum(estimate))

a = get_decennial(geography = "state", variables = "P1_001N", year = 2020)
head(a, 5)



DE_sex_hisp <- get_estimates(
  geography = "state",
  product = "characteristics",
  breakdown = c("SEX", "HISP"),
  breakdown_labels = TRUE,
  state = "DE",
  year = 2018
)

Hmm <- get_estimates(
  geography = "state",
  product = "population",
  state = "DE",
time_series = TRUE
)

DE_sex <- get_estimates(
  geography = "state",
  product = "population",
  state = "DE",
  year = 2019,
)



T_sex <- get_estimates(
  geography = "state",
  product = "population",
  state = "DE",
  year = 2015,
)