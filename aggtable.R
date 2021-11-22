library("dplyr")
library("readr")

#Olympic History: Athlete Events Data

athlete_events_data <- read.csv("https://raw.githubusercontent.com/aakashshameer/info201-finalproject/main/src/data/olympic_history/athlete_events.csv")

aggregate_athletes_data <- athlete_events_data %>%
  select(Sex, Age, Height, Weight, Team, Games, Sport, Medal)

#GDP Data

gdp_data <- read.csv("https://raw.githubusercontent.com/aakashshameer/info201-finalproject/main/src/data/GDP_data.csv")

aggregate_gdp_data <- gdp_data %>%
  select(ï..Country.Name, Country.Code, X2016)

names(aggregate_gdp_data)[1] <- "Country Name"

aggregate_gdp_data <- aggregate_gdp_data %>%
  rename("Country Code" = Country.Code)

aggregate_gdp_data <- aggregate_gdp_data %>%
  rename("2016 GDP" = X2016)

#COVID-19 Data 

covid_summary_data <- read.csv("https://raw.githubusercontent.com/aakashshameer/info201-finalproject/main/src/data/COVID-19_data/worldometer_coronavirus_summary_data.csv")

aggregate_summary_data <- covid_summary_data %>%
  select(country, active_cases)

aggregate_summary_data <- aggregate_summary_data %>%
  rename("Active Cases" = active_cases)

aggregate_summary_data <- aggregate_summary_data %>%
  rename("Country" = country)

#Joined Tables

#Medals vs GDP

medals_data <- read.csv("https://raw.githubusercontent.com/aakashshameer/info201-finalproject/main/src/data/olympic_data/Medals.csv")

names(medals_data)[1] <- "Rank"

medals_data <- medals_data %>%
  rename("Country Name" = Team.NOC)

medals_data <- medals_data %>%
  rename("Rank by Total" = Rank.by.Total)

gdp_medals_data <- full_join(aggregate_gdp_data, medals_data) 


#Tokyo Medals vs COVID Cases

tokyo_medals_data <- read.csv("https://raw.githubusercontent.com/aakashshameer/info201-finalproject/main/src/data/olympic_data/Tokyo%20Medals%202021.csv")

tokyo_medals_data <- tokyo_medals_data %>%
  rename("Gold Medal" = Gold.Medal)

tokyo_medals_data <- tokyo_medals_data %>%
  rename("Silver Medal" = Silver.Medal)

tokyo_medals_data <- tokyo_medals_data %>%
  rename("Bronze Medal" = Bronze.Medal)

tokyo_medals_data <- tokyo_medals_data %>%
  rename("Rank by Total" = Rank.By.Total)

tokyo_medals_covid_data <- full_join(tokyo_medals_data, aggregate_summary_data) 