##So, I think I need different functions for different year sets. Inclusion of Hispanic FUCKS EVERYTHING THAT I'M DOING up
tidy_vitalstats_14to16 <- function(dat, year, sex_dum){dat %>% clean_names() %>% select(!c('total', 'unk')) %>% 
  
  pivot_longer(cols = starts_with('x'), names_to = 'age_group_rough',
               values_to = 'death_count') %>% 
  
  mutate(year := {{ year }},
         sex := {{ sex_dum }},
         age_group = str_remove(age_group_rough, "x"),
         age_group = str_replace(age_group, "_", "-"),
         age_group = str_replace(age_group, "75", "75+"),
         
         
         county = case_when( race == "New Castle" ~ "ncc",
                             race == "Kent" ~ "k",
                             race == "Sussex" ~ "sus",
                             race == "Wilmington" ~ "wilm_drop",
                             race == "NC County" ~ 'ncc_drop',
                             race == "Delaware" ~ "de_drop"
         ),
         
         race_fix = case_when(race == "White" ~ "w",
                              race == "Black" ~ "b",
                              race == "Other" ~ "o"),
         
         age_group_dummy = case_when(age_group == "1" ~ 0,
                                     age_group == "1-4" ~ 0,
                                     age_group == "5-9" ~ 1,
                                     age_group == "10-14" ~ 2,
                                     age_group == "15-19" ~ 3,
                                     age_group == "20-24" ~ 4,
                                     age_group == "25-34" ~ 5,
                                     age_group == "35-44" ~ 6,
                                     age_group == "45-54" ~ 7,
                                     age_group == "55-64" ~ 8,
                                     age_group == "65-74" ~ 9,
                                     age_group == "75+" ~ 10,
                                     TRUE ~ 999)) %>%
  
  fill(county) %>% na.omit %>% select(!c('age_group_rough', 'race'))}


F_2014_raw <- tidy_vitalstats_14to16(dat=vs_2014_f, year=2014, sex_dum="F") %>% drop_some_vars(dat=F_2014_raw)
M_2014_raw <- tidy_vitalstats_14to16(dat=vs_2014_m, year=2014, sex_dum="M")

F_2015_raw <- tidy_vitalstats_14to16(dat=vs_2015_f, year=2015, sex_dum="F")
M_2015_raw <- tidy_vitalstats_14to16(dat=vs_2015_m, year=2015, sex_dum="M") 

F_2016_raw <- tidy_vitalstats(dat=vs_2016_f, year=2016, sex_dum="F")
M_2016_raw <- tidy_vitalstats(dat=vs_2016_f, year=2016, sex_dum="M") 

drop_some_vars <- function(dat){dat <- dat[!(dat$county == "de_drop" | dat$county == "ncc_drop"
                                                                   | dat$county == "wilm_drop"),]}
F_2014_clean <- drop_some_vars(dat=F_2014_raw)
M_2014_clean <- drop_some_vars(dat=M_2014_raw)

F_2015_clean <- drop_some_vars(dat=F_2015_raw)
M_2015_clean <- drop_some_vars(dat=M_2015_raw)

F_2016_clean <- drop_some_vars(dat=F_2016_raw)
M_2016_clean <- drop_some_vars(dat=M_2016_raw)


tidy_vitalstats_17to20 <- function(dat, year, sex_dum){dat %>% clean_names() %>% select(!c('total', 'unk')) %>% 
    
    pivot_longer(cols = starts_with('x'), names_to = 'age_group_rough',
                 values_to = 'death_count') %>% 
    
    mutate(year := {{ year }},
           sex := {{ sex_dum }},
           age_group = str_remove(age_group_rough, "x"),
           age_group = str_replace(age_group, "_", "-"),
           age_group = str_replace(age_group, "75", "75+"),
           
           
           county = case_when( race == "New Castle" ~ "ncc",
                               race == "Kent" ~ "k",
                               race == "Sussex" ~ "sus",
                               race == "Wilmington" ~ "wilm_drop",
                               race == "NC County" ~ 'ncc_drop',
                               race == "Delaware" ~ "de_drop"
           ),
           
           race_fix = case_when(race == "Non-Hispanic, White" ~ "w",
                                race == "Non-Hispanic, Black" ~ "b",
                                race == "Non-Hispanic, Other" ~ "o",
                                race == "Hispanic" ~ "h"),
           
           age_group_dummy = case_when(age_group == "1" ~ 0,
                                       age_group == "1-4" ~ 0,
                                       age_group == "5-9" ~ 1,
                                       age_group == "10-14" ~ 2,
                                       age_group == "15-19" ~ 3,
                                       age_group == "20-24" ~ 4,
                                       age_group == "25-34" ~ 5,
                                       age_group == "35-44" ~ 6,
                                       age_group == "45-54" ~ 7,
                                       age_group == "55-64" ~ 8,
                                       age_group == "65-74" ~ 9,
                                       age_group == "75+" ~ 10,
                                       TRUE ~ 999)) %>%
    
    fill(county) %>% na.omit %>% select(!c('age_group_rough', 'race'))}



F_2017_raw <- tidy_vitalstats_17to20(dat=vs_2017_f, year=2017, sex_dum="F")
M_2017_raw <- tidy_vitalstats_17to20(dat=vs_2017_m, year=2017, sex_dum="M")

F_2018_raw <- tidy_vitalstats_17to20(dat=vs_2018_f, year=2018, sex_dum="F")
M_2018_raw <- tidy_vitalstats_17to20(dat=vs_2018_m, year=2018, sex_dum="M") 

F_2019_raw <- tidy_vitalstats_17to20(dat=vs_2019_f, year=2019, sex_dum="F")
M_2019_raw <- tidy_vitalstats(dat=vs_2019_m, year=2019, sex_dum="M") 

F_2020_raw <- tidy_vitalstats_17to20(dat=vs_2020_f, year=2020, sex_dum="F")
M_2020_raw <- tidy_vitalstats_17to20(dat=vs_2020_m, year=2020, sex_dum="M") 

F_2017_clean <- drop_some_vars(dat=F_2017_raw)
M_2017_clean <- drop_some_vars(dat=M_2017_raw)

F_2018_clean <- drop_some_vars(dat=F_2018_raw)
M_2018_clean <- drop_some_vars(dat=M_2018_raw)

F_2019_clean <- drop_some_vars(dat=F_2019_raw)
M_2019_clean <- drop_some_vars(dat=M_2019_raw)

F_2020_clean <- drop_some_vars(dat=F_2020_raw)
M_2020_clean <- drop_some_vars(dat=M_2020_raw)










