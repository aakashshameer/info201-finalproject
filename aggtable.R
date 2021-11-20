library(dplyr)
library(readr)
athlete_events_data <- read.csv("src/data/olympic_history/athlete_events.csv")

aggregate_athletes_data <- athlete_events_data %>%
  select(Sex, Age, Height, Weight, Team, Games, Sport, Medal)

gdp_data <- read.csv("src/data/GDP_data.csv")

aggregate_gdp_data <- gdp_data %>%
  select(Country.Name, Country.Code, X2016)