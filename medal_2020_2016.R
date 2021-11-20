library(dplyr)
library(stringr)

tokyo_olymic_medal <- read.csv(
  "https://raw.githubusercontent.com/aakashshameer/info201-finalproject/main/src/data/olympic_data/Tokyo%20Medals%202021.csv")

olympi_medal <- read.csv(
  "https://raw.githubusercontent.com/aakashshameer/info201-finalproject/main/src/data/Summer_olympic_Medals.csv")

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

#Medal count of 6 selected country in Tokyo olympic
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



