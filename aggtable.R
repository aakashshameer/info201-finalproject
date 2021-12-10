library(dplyr)
library(readr)
library(tidyverse)

#Olympic History: Athlete Events Data

athlete_events_data <- read.csv("src/data/olympic_history/athlete_events.csv")

aggregate_athletes_data <- athlete_events_data %>%
  select(Sex, Age, Height, Weight, Team, Games, Sport, Medal) %>%
  group_by(Team) 

aggregate_athletes_data$Weight <- sub("0+$", "", as.character(aggregate_athletes_data$Weight))

#GDP Data

gdp_data2 <- read.csv("src/data/GDP_data.csv", fileEncoding="UTF-8-BOM")

aggregate_gdp_data <- gdp_data2 %>%
  select(Country.Name, Country.Code, X2016) %>%
  rename("Country_Name" = Country.Name) %>%
  rename("Country Code" = Country.Code) %>%
  rename("GDP2016" = X2016) 


#mutate_if(is.numeric, format(), 3)

aggregate_gdp_data2 <- gdp_data2 %>%
  select(Country.Name, Country.Code, X2016) %>%
  rename("Country Name" = Country.Name) %>%
  rename("Country Code" = Country.Code) %>%
  rename("GDP2016" = X2016)
  #mutate_if(is.numeric, signif(digits = 3))

#COVID-19 Data 

covid_summary_data <- read.csv("src/data/COVID-19_data/worldometer_coronavirus_summary_data.csv")

aggregate_summary_data <- covid_summary_data %>%
  select(country, active_cases) %>%
  rename("Active Cases" = active_cases) %>%
  rename("Country" = country)

#Joined Tables

#Medals vs GDP

source("summary_info.R")

brazil2016_total_medal <- brazil_olympic_selected_country_medal %>%
  mutate(total = Gold + Silver + Bronze)

aggregate_2016_medal_data <- brazil2016_total_medal %>%
  select(Year, Host_country, Host_city, Country_Name, total)  %>%
  rename("Host Country" = Host_country) %>%
  rename("Host City" = Host_city) %>%
  rename("Total_Medals" = total)
  #rename("Country Name" = Country_Name)

gdp_medals_data <- inner_join(aggregate_gdp_data, aggregate_2016_medal_data)

gdp_medals_data$Total_Medals <- as.numeric(gdp_medals_data$Total_Medals )   

#Tokyo Medals vs COVID Cases

tokyo_medals_data <- read.csv("src/data/olympic_data/Tokyo Medals 2021.csv")

tokyo_medals_data <- tokyo_medals_data %>%
  rename("Gold Medal" = Gold.Medal) %>%
  rename("Silver Medal" = Silver.Medal)  %>%
  rename("Bronze Medal" = Bronze.Medal) %>%
  rename("Rank by Total" = Rank.By.Total) %>%
  arrange(`Rank by Total`) 

tokyo_medals_covid_data <- full_join(tokyo_medals_data, aggregate_summary_data) 

