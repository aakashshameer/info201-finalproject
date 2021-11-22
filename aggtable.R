library(dplyr)
library(readr)
library(tidyverse)

#Data from our athlete_events.csv
athlete_events_data <- read.csv("src/data/olympic_history/athlete_events.csv")

#Aggregate Table from our data from our athlete_events.csv
aggregate_athletes_data <- athlete_events_data %>%
  select(Sex, Age, Height, Weight, Team, Games, Sport, Medal) 

gdp_data <- read.csv("src/data/GDP_data.csv")

aggregate_gdp_data <- gdp_data %>%
  select(Country.Name, Country.Code, X2016)

aggregate_gdp_data <- aggregate_gdp_data %>%
  rename("2016" = X2016) 
  
