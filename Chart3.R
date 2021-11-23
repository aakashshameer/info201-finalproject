library(ggplot2)
library(dplyr)
library(tidyverse)
library(maps)
library(hrbrthemes)


source("summary_info.R")
source("aggtable.R")

brazil2016_total_medal <- brazil2016_total_medal %>%
                          select(Country_Name, total)


Medals <- c(113,121, 58,41, 88,70,  65,  67, 37,42,  7, 2)
Year <- c("2021","2016","2021","2016","2021","2016","2021","2016","2021","2016","2021","2016")
Country_Name <- c("United States", "United States", "Japan" , "Japan" , "China", "China", "Great Britain", "Great Britain", "Germany", "Germany",  "India",  "India")
tokyo_medals_data_new <- data.frame(Country_Name, Medals, Year)

stacked_bar_graph <- ggplot(tokyo_medals_data_new, aes(fill=Year, y=Medals, x=Country_Name)) + 
  geom_bar(position="stack", stat="identity") + 
  labs(x = "Medal Count", y = "Country", title = "Change in Total Medal Count from 2016 to 2021") + 
  coord_flip() + 
  scale_fill_manual(values = c("Blue", " Red"))
plot(stacked_bar_graph)


