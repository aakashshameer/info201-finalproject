install.packages("dplyr")
library(dplyr)
install.packages("readr")
library(readr)
read.csv("src/data/olympic_history/athlete_events.csv")


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




