# INFO 201 - Final Project
# Olympics Project
_This project was created for the purpose of the INFO 201 Final Project. It explore various topics that surrounds the Olympics._

## Domain of Interest

**Why are we interested in this field Domain?**

We chose the Olympics as a topic because our group has a shared interest in sports, and the event just happened this year. Also, the Olympics has so many different components with a wide range of events and countries competing that we can wrangle compelling data from.

**What other examples of data driven projects related to this Domain?**

1. [Olympic Data Analysis Project](https://triemann.ca/wp-content/uploads/2021/01/Olympic-Analysis_Riemann_Nicol.pdf)

  This dataset took past Olympics data and tried to find correlation between medal counts and various other factors such as being a host country, the country's GDP, etc.

2. [Evolution of Olympics](https://iopscience.iop.org/article/10.1088/1757-899X/1099/1/012058/pdf)

  This dataset stresses on the evolution of the Olympic Games. It looks at the average age of participants change over time.

3. [Olympic History: Athletes and Results Data Analysis](http://athena.ecs.csus.edu/~herreram/CSC177_Final_Report.pdf)

  This dataset looks at the biological attributes of the Athletes and the odds of winning a Gold, Silver or Bronze medal.

**What data-driven questions do we hope to answer about this domain and how?**

1. What height and weight classes for male and female athletes show the most success in different events?

  - We can look at max medal counts for different events and look at the categories that male and female athletes fall into.


2. How do countries’ GDP relate to their medal counts?

 - We can compare whether the countries GDP has an effect on their countries medal count.
 - We can also see whether an increase/decrease of the countries' GDP results has a direct relation with their medal counts for the Olympics.


3. How do the results of the 2021 Olympics for different countries compare to that of past Olympic games?

 - We can look at countries' number of COVID-19 cases and look at whether that affected the medal count.
 - We can also look at performance of the athletes from different countries based on the facilities the event requires.

## Finding Data
**Data sources and descriptions of the data collected or generated**

1. [GDP Annual Growth for Each Country (1960 - 2020)](src/data/GDP_data.csv)

 - This dataset contains GDP Growth from 1960 to 2020 for 264 countries.


2. [Olympics 2021](src/data/olympic_data)

  - This data covers athletes name, gender and country, event and medal count for the recent Tokyo Olympics 2021.


3. [120 years of Olympic history: athletes and results](src/data/olympic_history)

  - This is a historical dataset on the modern summer and winter Olympic Games, including all the Games from Athens 1896 to Rio 2016 which consist of the Name, Sex, Age, Height and Weight, Event, Medal, etc.


4. [Covid-19 Global Dataset](src/data/COVID-19_data)

  - This dataset contains COVID-19 data from 218 countries which consist of Country, Confirmed Cases, Total Cases/Deaths Per 1M Population, Active and Recovered Cases, etc.

**Number of Observations and Rows in our Data**

1. [GDP Annual Growth for Each Country (1960 - 2020)](src/data/GDP_data.csv)

 - 65 Observations and 264 Rows


2. [Olympics 2021](src/data/olympic_data)

  - Athletes.csv - 3 Observations and 11085 Rows
  - EntriesGender.csv - 4 Observations and 46 Rows
  - Medals.csv - 7 Observations and 93 Rows


3. [120 years of Olympic history: athletes and results](src/data/olympic_history)

  - athletes_events.csv - 15 Observations and 271116 Rows


4. [Covid-19 Global Dataset](src/data/COVID-19_data)

  - worldometer_coronavirus_summary_data.csv - 10 Observations and 220 Rows

**Questions (from above) that can be answered using our data in this dataset.**

1. What height and weight classes for male and female athletes show the most success in different events?

  - We can look at max medal counts from Tokyo Olympics 2021 and 120 years of Olympic history: athletes and results datasets and look into the categories that male and female athletes fall into.


2. How do countries’ GDP relate to their medal counts?

 - We can look into the GDP_data and compare with olympic_data and see the correlation between both factors.


3. How do the results of the 2021 Olympics for different countries compare to that of past Olympic games?

 - We can look at COVID-19_data and Tokyo Olympics 2021 datasets and find the correlation between the number of COVID-19 cases and medal counts.
