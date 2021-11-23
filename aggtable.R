library("dplyr")
library("readr")
library("tidyverse")

source("summary_info.R")

#Olympic History: Athlete Events Data

athlete_events_data <- read.csv("src/data/olympic_history/athlete_events.csv")

aggregate_athletes_data <- athlete_events_data %>%
  select(Sex, Age, Height, Weight, Team, Games, Sport, Medal)

#GDP Data

gdp_data2 <- read.csv("src/data/GDP_data.csv", fileEncoding="UTF-8-BOM")

aggregate_gdp_data <- gdp_data2 %>%
  select(Country.Name, Country.Code, X2016) %>%
  rename("Country Name" = Country.Name) %>%
  rename("Country Code" = Country.Code) %>%
  rename("2016 GDP" = X2016)

#COVID-19 Data 

covid_summary_data <- read.csv("src/data/COVID-19_data/worldometer_coronavirus_summary_data.csv")

aggregate_summary_data <- covid_summary_data %>%
  select(country, active_cases)

aggregate_summary_data <- aggregate_summary_data %>%
  rename("Active Cases" = active_cases)

aggregate_summary_data <- aggregate_summary_data %>%
  rename("Country" = country)

#Joined Tables

#Medals vs GDP


brazil_total_medal <- brazil_olympic_selected_country_medal %>%
  mutate(total = Gold + Silver + Bronze)


medals_data <- read.csv("src/data/olympic_data/Medals.csv", fileEncoding="UTF-8-BOM")

names(medals_data)[1] <- "Rank"

medals_data <- medals_data %>%
  rename("Country Name" = Team.NOC)

medals_data <- medals_data %>%
  rename("Rank by Total" = Rank.by.Total)

gdp_medals_data <- full_join(aggregate_gdp_data, medals_data) 

#Tokyo Medals vs COVID Cases

tokyo_medals_data <- read.csv("src/data/olympic_data/Tokyo Medals 2021.csv")

tokyo_medals_data <- tokyo_medals_data %>%
  rename("Gold Medal" = Gold.Medal)

tokyo_medals_data <- tokyo_medals_data %>%
  rename("Silver Medal" = Silver.Medal)

tokyo_medals_data <- tokyo_medals_data %>%
  rename("Bronze Medal" = Bronze.Medal)

tokyo_medals_data <- tokyo_medals_data %>%
  rename("Rank by Total" = Rank.By.Total)

tokyo_medals_covid_data <- full_join(tokyo_medals_data, aggregate_summary_data) 