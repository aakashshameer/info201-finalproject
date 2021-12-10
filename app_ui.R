library(shiny)
library(tidyverse)
library(plotly)
library(ggplot2)
library(dplyr)

#source("app_server.R")
#source("aggtable.R")
#source("Chart3.R")


# Create UI for Intro page

intro_page <- tabPanel(
  "Introduction",
  includeCSS("style.css"),
  tags$body(
    titlePanel(tags$h1("Project Overview")),
    #tag$p(em("by Aakash Shameer Srazali, Shiori Pathak, Shunsuke Hosaka and Emily Wang")),
    tags$p(
      "The reflection questions we wished to answer are", em("What height and weight classes for male and female athletes show the most success in different events?"),
      ", ", em("How do countries’ GDP relate to their medal counts?"), "and ", em("How do the results of the 2021 Olympics for different countries compare to that of past Olympic games?"), 
      ". Those were the questions that we had in our minds when starting this assignment."
    ),
    
    #img(src="olympics.jpeg", align = "center", width = "max", height = "400"),
    HTML('<center><img src="olympics.jpeg", width = 800, height = 500></center>'),
    
    tags$h2("Nature of the data"),
    tags$p(
      "We chose the Olympics as a topic because our group has a shared interest 
      in sports, and the event just happened this year. Also, the Olympics has 
      so many different components with a wide range of events and countries 
      competing that we can wrangle compelling data from. We also read this",
      a(" article ", href ="https://swimswam.com/tokyo-2020-olympic-games-watched-by-more-than-3-billion-people/"
      ), "which shows the popularity of the Games."
    ),
    
    # insert picture later
    HTML('<center><img src="bolt.jpg", width = 800, height = 500></center>'),
    
    tags$h2("Data Presented"),
    tags$p(
      "In the next few tabs, you'll be presented with a
      few pages of interactive dataset
      with a brief explanation of why we chose that graph
      and what patterns emerged from that.
      After that, you will be presented with a conclusion page that presents ",
      strong("Three Major Takeaways"), " from our findings."
    )
)
)

# Create UI for, interactive page 1

# Widget to select sport for weight chart 
sport_check_weight <- checkboxGroupInput(inputId = "Sport_Weight",
                       label = "Sports for Weight",
                       choices = c("Basketball", "Cycling", "Gymnastics",
                                   "Swimming", "Tennis", "Weightlifting"),
                       selected = c("Basketball", "Cycling", "Gymnastics",
                                    "Swimming", "Tennis", "Weightlifting"))

# Widget to select sport for height chart 
sport_check_height <- checkboxGroupInput(inputId = "Sport_Height",
                       label = "Sports for Height",
                       choices = c("Basketball", "Cycling", "Gymnastics",
                                   "Swimming", "Tennis", "Weightlifting"),
                       selected = c("Basketball", "Cycling", "Gymnastics",
                                    "Swimming", "Tennis", "Weightlifting"))

first_graph_page <- tabPanel(
  "Bar Chart View",
  titlePanel("Height and Weight of Gold Male and Female Medalist
             for Various Sports"),
  sidebarLayout(
    sidebarPanel(
      sport_check_weight,
      sport_check_height
      #width = 20
    ),
    mainPanel(
      plotlyOutput("weight_chart"),
      plotlyOutput("height_chart")
    )
  ),
  tags$p(
    "Here we can observe the difference between the", strong("Height and Weight of Gold
    Medalist of Male and Female Athletes of the 2016 Olympics Games"), " . We can see
    that there is a difference in each sport of Weight and Height Requirements.
    Swimming requires their athletes to be one of the tallest among the 4 sports
    and Weightlifting requires its athletes to be among the heaviest. 
    These characteristics fits the style and enviroment of the sport itself. You
    can change, view and compare different sports on the Side Panel on the left."
  )
)

# Second Interactive Page

#left side of second tab
scatter_sidebar_content <- sliderInput(inputId = "Total_Medals", 
              label = "Choose the total medal count range:",
              min = min(gdp_medals_data$Total_Medals), 
              max = max(gdp_medals_data$Total_Medals), 
              value = c(1, 25))


#Whole tab of second tab
second_graph_page <- tabPanel(
  "Scatter View",
  titlePanel("Countries' Medal Count vs GDP"),
  sidebarLayout(
    sidebarPanel(
      scatter_sidebar_content
    ),
    mainPanel(
      plotlyOutput("scatter")
    )
  ),
  tags$p(
    "Here we can observe the direct comparison between the GDP of countries 
    and their medal counts. There is a slider on the left which could change
    the medal count range. If we look at the graph, we can spot a direct
    correlation between the two. If we set the medal count on the left to ", strong("1 - 121"),
    "we can take ", strong("United States"), ", their GDP is high will
    corresponds to their medal count to be among the highest.", strong("India"), ", on the
    other hand, despite having one of the largest population, their GDP is low
    which corresponds to their Olympic medal count to be low. This is an
    interesting distinction because countries with higher GDP will have more
    funding to invest in their national sports team which will boost their medal
    counts."
  )
)



# Third page
select_country <- checkboxGroupInput(inputId = "Countries", 
                                     label = "Countries", 
                                     choices = c("United States", "Japan", "India", "Great Britain", "Germany", "China"), 
                                     selected = c("United States", "Japan", "India", "Great Britain", "Germany", "China")
                                     )

third_graph_page <- tabPanel(
  "Stacked Bar Chart View",
  titlePanel("Impact of COVID-19 on Countries' Medal Count"),
  sidebarLayout(
    sidebarPanel(
      select_country
      #width = 20
    ),
    mainPanel(
      plotlyOutput("slope")
    )
  ),
  tags$p(
    "From this graph, we can observe the medal counts of several countries from
    the ", strong("Tokyo 2021 Olympics and the Rio 2016 Olympics. "), "There is a option on the
    left to, ", em("select the different sports to view on the graph."), "
    Despite the games, having a 5-year gap and the countries
    and athletes needing to deal with COVID-19,
    their medal count doesn’t have much differences. The United States medal
    count actually increase from 2016 to 2021 despite having a large amount of
    COVID-19 cases reported in their country. This proves that the effect that
    COVID-19 has on the medal count is very slight."
  )
)

conclusion_page <- tabPanel(
  "Conclusion",
  tags$body(
    titlePanel((tags$h1("Conclusion"))),
    tags$h2("3 major takeaways"),
    tags$p(
      "Whe n we started this project, we were hoping to answer a lot of questions.
           Some of the questions we were curious about were: ",
      em("What height and weight classes for male and female athletes show the
          most success in different events?"),
      ", ", em("How do countries’ GDP relate to their medal counts?"), "and ",
      em("How do the results of the 2021 Olympics for different countries compare
         to that of past Olympic games?"),
      "Throught our project we were able to answer most of them.
            Three of the major points we took away from the project are: ",
      tags$ul(
        tags$li("Height and Weight requirement for Males and Females differ 
                from sports to sports."),
        tags$li("The GDP of the country has a direct correlation to it's countries'
                Medal Count."),
        tags$li("The effect of a 5-year gap for the most recent Olympics instead
        of the usual 4-year gap, makes little to no difference from the surface
                point of view.")
      )
    )
  )
)


ui <- navbarPage(
  "Olympics Data Project",
  intro_page,
  first_graph_page,
  second_graph_page,
  third_graph_page,
  conclusion_page
)
