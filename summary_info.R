library(dplyr)
library(readr)
library(stringr)
library(tidyverse)
athlete_events <- read.csv("src/data/olympic_history/athlete_events.csv")
tokyo_olymic_medal <- read.csv("src/data/olympic_data/Tokyo Medals 2021.csv")

olympi_medal <- read.csv("src/data/Summer_olympic_Medals.csv")

GDP_data <- read.csv("src/data/GDP_data.csv") %>%
  rename("2016" = X2016, "Country Name" = Country.Name) 


# Average weight of men gold medalists for Swimming in 2016
avg_men_swimming_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Swimming") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Weight)
avg_men_swimming_weight <- mean(avg_men_swimming_weight, trim = 0, na.rm = TRUE)

# Average height of men gold medalists for Swimming in 2016
avg_men_swimming_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Swimming") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Height)
avg_men_swimming_height <- mean(avg_men_swimming_height, trim = 0, na.rm = TRUE)

# Average weight of women gold medalists for Swimming in 2016
avg_women_swimming_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Swimming") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Weight)
avg_women_swimming_weight <- mean(avg_women_swimming_weight, trim = 0, na.rm = TRUE)

# Average height of women gold medalists for Swimming in 2016
avg_women_swimming_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Swimming") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Height)
avg_women_swimming_height <- mean(avg_women_swimming_height, trim = 0, na.rm = TRUE)

# Average weight of men gold medalists for Gymnastics in 2016
avg_men_gym_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Gymnastics") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Weight)
avg_men_gym_weight <- mean(avg_men_gym_weight, trim = 0, na.rm = TRUE)

# Average height of men gold medalists for Gymnastics in 2016
avg_men_gym_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Gymnastics") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Height)
avg_men_gym_height <- mean(avg_men_gym_height, trim = 0, na.rm = TRUE)

# Average weight of women gold medalists for Gymnastics in 2016
avg_women_gym_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Gymnastics") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Weight)
avg_women_gym_weight <- mean(avg_women_gym_weight, trim = 0, na.rm = TRUE)

# Average height of women gold medalists for Gymnastics in 2016
avg_women_gym_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Gymnastics") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Height)
avg_women_gym_height <- mean(avg_women_gym_height, trim = 0, na.rm = TRUE)

# Average wieght of men gold medalists for Weightlifting in 2016
avg_men_lift_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Weightlifting") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Weight)
avg_men_lift_weight <- mean(avg_men_lift_weight, trim = 0, na.rm = TRUE)

# Average height of men gold medalists for Weightlifting in 2016
avg_men_lift_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Weightlifting") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Height)
avg_men_lift_height <- mean(avg_men_lift_height, trim = 0, na.rm = TRUE)

# Average weight of women gold medalists for Weightlifting in 2016
avg_women_lift_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Weightlifting") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Weight)
avg_women_lift_weight <- mean(avg_women_lift_weight, trim = 0, na.rm = TRUE)

# Average height of women gold medalists for Weightlifting in 2016
avg_women_lift_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Weightlifting") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Height)
avg_women_lift_height <- mean(avg_women_lift_height, trim = 0, na.rm = TRUE)

# Average weight of men gold medalists for Tennis in 2016
avg_men_Tennis_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Tennis") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Weight)
avg_men_Tennis_weight <- mean(avg_men_Tennis_weight, trim = 0, na.rm = TRUE)

# Average height of men gold medalists for Tennis in 2016
avg_men_Tennis_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Tennis") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Height)
avg_men_Tennis_height <- mean(avg_men_Tennis_height, trim = 0, na.rm = TRUE)

# Average weight of women gold medalists for Tennis in 2016
avg_women_Tennis_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Tennis") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Weight)
avg_women_Tennis_weight <- mean(avg_women_Tennis_weight, trim = 0, na.rm = TRUE)

# Average height of women gold medalists for Tennis in 2016
avg_women_Tennis_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Tennis") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Height)
avg_women_Tennis_height <- mean(avg_women_Tennis_height, trim = 0, na.rm = TRUE)

# Average weight of women gold medalists for Cycling in 2016
avg_women_Cycling_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Cycling") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Weight)
avg_women_Cycling_weight <- mean(avg_women_Cycling_weight, trim = 0, na.rm = TRUE)

# Average height of women gold medalists for Cycling in 2016
avg_women_Cycling_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Cycling") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Height)
avg_women_Cycling_height <- mean(avg_women_Cycling_height, trim = 0, na.rm = TRUE)

# Average weight of men gold medalists for Cycling in 2016
avg_men_Cycling_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Cycling") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Weight)
avg_men_Cycling_weight <- mean(avg_men_Cycling_weight, trim = 0, na.rm = TRUE)

# Average height of men gold medalists for Cycling in 2016
avg_men_Cycling_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Cycling") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Height)
avg_men_Cycling_height <- mean(avg_men_Cycling_height, trim = 0, na.rm = TRUE)

# Average weight of women gold medalists for Basketball in 2016
avg_women_Basketball_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Basketball") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Weight)
avg_women_Basketball_weight <- mean(avg_women_Basketball_weight, trim = 0, na.rm = TRUE)

# Average height of women gold medalists for Basketball in 2016
avg_women_Basketball_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Cycling") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "F") %>%
  pull(Height)
avg_women_Basketball_height <- mean(avg_women_Basketball_height, trim = 0, na.rm = TRUE)

# Average weight of men gold medalists for Basketball in 2016
avg_men_Basketball_weight <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Basketball") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Weight)
avg_men_Basketball_weight <- mean(avg_men_Basketball_weight, trim = 0, na.rm = TRUE)

# Average height of men gold medalists for Basketball in 2016
avg_men_Basketball_height <- athlete_events %>%
  filter(`Games` == "2016 Summer") %>%
  filter(`Sport` == "Basketball") %>%
  filter(`Medal` == "Gold") %>%
  filter(`Sex` == "M") %>%
  pull(Height)
avg_men_Basketball_height <- mean(avg_men_Basketball_height, trim = 0, na.rm = TRUE)

# What was the U.S. GDP in 2016?
US_2016_GDP <- GDP_data %>%
  filter(`Country Name` == "United States") %>%
  #filter(`2016` == max(`2016`)) %>%
  pull(`2016`)

# What was India's GDP in 2016?
India_2016_GDP <- GDP_data %>%
  filter(`Country Name` == "India") %>%
  pull(`2016`)

# What was China's GDP in 2016?
China_2016_GDP <- GDP_data %>%
  filter(`Country Name` == "China") %>%
  pull(`2016`)

# What was Germany's GDP in 2016? 
Germany_2016_GDP <- GDP_data %>%
  filter(`Country Name` == "Germany") %>%
  pull(`2016`)

# What was Japan's GDP in 2016? 
Japan_2016_GDP <- GDP_data %>%
  filter(`Country Name` == "Japan") %>%
  pull(`2016`)

# What was Great Britain's GDP in 2016? 
United_Kingdom_2016_GDP <- GDP_data %>%
  filter(`Country Name` == "United Kingdom") %>%
  pull(`2016`)


### Japan  Olympic  2020
#China 
jp_olympic_ch_medal <- olympi_medal %>%
  filter(Host_country == "Japan") %>% 
  filter(Year == 2020) %>%
  filter(Country_Name == "China")
#Japan
jp_olympic_jp_medal <- olympi_medal %>%
  filter(Host_country == "Japan") %>% 
  filter(Year == 2020) %>%
  filter(Country_Name == "Japan")
#India
jp_olympic_in_medal <- olympi_medal %>%
  filter(Host_country == "Japan") %>% 
  filter(Year == 2020) %>%
  filter(Country_Name == "India")
#United States
jp_olympic_us_medal <- olympi_medal %>%
  filter(Host_country == "Japan") %>% 
  filter(Year == 2020) %>%
  filter(Country_Name == "United States")
#Germany
jp_olympic_ge_medal <- olympi_medal %>%
  filter(Host_country == "Japan") %>% 
  filter(Year == 2020) %>%
  filter(Country_Name == "Germany")
#Great Britain
jp_olympic_gb_medal <- olympi_medal %>%
  filter(Host_country == "Japan") %>% 
  filter(Year == 2020) %>%
  filter(Country_Name == "Great Britain")

#Medal count of 6 selected country in Tokyo Olympic
tokyo_olympic_selected_country_medal <- rbind(
  jp_olympic_ch_medal,
  jp_olympic_jp_medal,
  jp_olympic_in_medal,
  jp_olympic_us_medal,
  jp_olympic_gb_medal, 
  jp_olympic_ge_medal)


### Brazil  Olympic 2016
#China 
br_olympic_ch_medal <- olympi_medal %>%
  filter(Host_country == "Brazil") %>% 
  filter(Country_Name == "China")
#Japan
br_olympic_jp_medal <- olympi_medal %>%
  filter(Host_country == "Brazil") %>% 
  filter(Country_Name == "Japan")
#India
br_olympic_in_medal <- olympi_medal %>%
  filter(Host_country == "Brazil") %>% 
  filter(Country_Name == "India")
#United States
br_olympic_us_medal <- olympi_medal %>%
  filter(Host_country == "Brazil") %>% 
  filter(Country_Name == "United States")
#Germany
br_olympic_ge_medal <- olympi_medal %>%
  filter(Host_country == "Brazil") %>% 
  filter(Country_Name == "Germany")
#Great Britain
br_olympic_gb_medal <- olympi_medal %>%
  filter(Host_country == "Brazil") %>% 
  filter(Country_Name == "Great Britain")

#medal count of 6 selected country in Brazil Olympics
brazil_olympic_selected_country_medal <- rbind(
  br_olympic_ch_medal,
  br_olympic_jp_medal,
  br_olympic_in_medal,
  br_olympic_us_medal,
  br_olympic_gb_medal, 
  br_olympic_ge_medal)


left_join(brazil_olympic_selected_country_medal, 
          tokyo_olympic_selected_country_medal, 
)
