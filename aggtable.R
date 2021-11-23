library("dplyr")
library("readr")
library("tidyverse")

#Olympic History: Athlete Events Data

athlete_events_data <- read.csv("src/data/olympic_history/athlete_events.csv")

aggregate_athletes_data <- athlete_events_data %>%
  select(Sex, Age, Height, Weight, Team, Games, Sport, Medal)

#GDP Data

gdp_data2 <- read.csv("src/data/GDP_data.csv", fileEncoding="UTF-8-BOM")

aggregate_gdp_data <- gdp_data2 %>%
  select(Country.Name, Country.Code, X2016) %>%
  rename("Country_Name" = Country.Name) %>%
  rename("Country_Code" = Country.Code) %>%
  rename("2016_GDP" = X2016)

#COVID-19 Data 

covid_summary_data <- read.csv("src/data/COVID-19_data/worldometer_coronavirus_summary_data.csv")

aggregate_summary_data <- covid_summary_data %>%
  select(country, active_cases) %>%
  rename("Active_Cases" = active_cases) %>%
  rename("Country" = country)

#Joined Tables

#Medals vs GDP

source("summary_info.R")

brazil2016_total_medal <- brazil_olympic_selected_country_medal %>%
  mutate(total = Gold + Silver + Bronze)

aggregate_2016_medal_data <- brazil2016_total_medal %>%
  select(Year, Host_country, Host_city, Country_Name, total)  %>%
  rename("Country_Name" = Country_Name) %>%
  rename("Host_Country" = Host_country) %>%
  rename("Host_City" = Host_city) %>%
  rename("Total_Medals" = total) 

gdp_medals_data <- inner_join(aggregate_gdp_data, aggregate_2016_medal_data) 

gdp_medals_data$Total_Medals <- as.numeric(gdp_medals_data$Total_Medals)   

#Tokyo Medals vs COVID Cases

tokyo_medals_data <- read.csv("src/data/olympic_data/Tokyo Medals 2021.csv")

tokyo_medals_data <- tokyo_medals_data %>%
  rename("Gold_Medal" = Gold.Medal) %>%
  rename("Silver_Medal" = Silver.Medal)  %>%
  rename("Bronze_Medal" = Bronze.Medal) %>%
  rename("Rank_by_Total" = Rank.By.Total)

tokyo_medals_covid_data <- full_join(tokyo_medals_data, aggregate_summary_data) 