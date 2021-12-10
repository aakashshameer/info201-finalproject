library(dplyr)
library(readr)
library(ggplot2)
library(tidyverse)
library(hablar)
library(ggrepel)
library(knitr)

source("aggtable.R")
source("summary_info.R")

#added total medal count in 2016 Brazil olympic medal count 
brazil_total_medal <- brazil_olympic_selected_country_medal %>% 
  mutate(total = Gold + Silver + Bronze) %>% 
  rename("Country Name" = Country_Name)


#Joined 2016 total medal counts of 6 country and their GDP
brazil_oly_gdp_medal_count <- gdp_medals_data %>% 
  rename("Country Name" = Country_Name) %>%
  left_join(brazil_total_medal, by = "Country Name") %>% 
  select ("Country Name", "GDP2016", "total")


gdp_vs_medal_table <- kable(brazil_oly_gdp_medal_count,
                            caption = "GDP vs Medal Count for Olympics 2016",
                            format.args = list(
                              big.mark = ",",
                              scientific = FALSE
                            )
)

update_geom_defaults("text_repel", list(color = "#525252", size = 3.5, family = "sans"))

#chart_gdp_medal_count1 <- ggplot(gdp_medals_data, aes(x =  `Total Medals`, y = GDP2016)) +
#  geom_point(data = gdp_medals_data,
#             size = 3,
#             color = "#E35E9C") +
#  geom_text_repel(aes(label = `Country Name`)) +
# ggtitle("2016 GDP & Olympic Medal Count") +
#  theme(plot.title = element_text(size = 13, color = "#E35E9C"), 
#       axis.text = element_text(color = "#525252", size = 8), 
#        text = element_text(size = 10) +
#          labs(x = "Total Medal", y = "GDP"))

#plot(chart_gdp_medal_count1)
