library(ggplot2)
library(dplyr)
library(tidyverse)

# swimming, gymnastica, weight lift, tennis
# only gold



mod_weight_data <- athlete_events %>%
  select(Sex, Height, Weight, Games, Sport, Medal) %>%
  filter(Games == "2016 Summer") %>%
  filter(Sport %in% c("Gymnastics", "Swimming", "Weightlifting", "Tennis")) %>%
  filter(Medal == "Gold")

source("summary_info.R")
Sport <- c("Gymnastics", "Gymnastics", "Swimming", "Swimming",
           "Weightlifting", "Weightlifting", "Tennis", "Tennis") 
Sex <- c("M", "F", "M", "F", "M", "F", "M", "F")
Avg_Weight <- c(avg_men_gym_weight, avg_women_gym_weight, avg_men_swimming_weight, avg_women_swimming_weight,
                avg_men_lift_weight, avg_women_lift_weight, avg_men_Tennis_weight, avg_women_Tennis_weight)
Avg_Weight_Chart_Data <- data.frame(Sport, Avg_Weight, Sex)


Chart_Avg_Weight <- ggplot(Avg_Weight_Chart_Data,
                           aes(Sport, Avg_Weight, col = Sex, fill = Sex)) +
  labs(x = "Sports", y = "Average Weight (kg)",
       title = "2016 Average Weight for Male and Female Gold Medal Athlethes") +
  geom_bar(position= "dodge", stat= "identity") 
  #+ scale_fill_manual(name = "Sex", labels = c("Male", "Female"), values = c("Blue", "Red"))
  plot(Chart_Avg_Weight)
  
  
Sport <- c("Gymnastics", "Gymnastics", "Swimming", "Swimming",
             "Weightlifting", "Weightlifting", "Tennis", "Tennis") 
Sex <- c("M", "F", "M", "F", "M", "F", "M", "F")
Avg_Height <- c(avg_men_gym_height, avg_women_gym_height, avg_men_swimming_height, avg_women_swimming_height,
                  avg_men_lift_height, avg_women_lift_height, avg_men_Tennis_height, avg_women_Tennis_height)
  Avg_Height_Chart_Data <- data.frame(Sport, Avg_Height, Sex)
  
  
  Chart_Avg_Height <- ggplot(Avg_Height_Chart_Data,
                             aes(Sport, Avg_Height, col = Sex, fill = Sex)) +
    labs(x = "Sports", y = "Average Height (cm)",
         title = "2016 Average Height for Male and Female Gold Medal Athlethes") +
    geom_bar(position= "dodge", stat= "identity") 
  plot(Chart_Avg_Height)

