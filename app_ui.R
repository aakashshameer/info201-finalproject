library(shiny)
library(tidyverse)
library(plotly)
library(ggplot2)
library(dplyr)

source("app_server.R")
source("aggtable.R")
source("Chart3.R")


# Create UI for Intro page

intro_page <- tabPanel(
  "Introduction",
  #includeCSS("style.css"),
  tags$body(
    titlePanel(tags$h1("Project Overview")),
    tags$p(
      "The reflection questions we wished to answer are", em("What height and weight classes for male and female athletes show the most success in different events?"),
      ", ", em("How do countries’ GDP relate to their medal counts?"), "and ", em("How do the results of the 2021 Olympics for different countries compare to that of past Olympic games?"), 
      ". Those were the questions that we had in our minds when starting this assignment."
    ),
    
    img(src="olympics.jpeg", align = "center", width = "max", height = "400"),
    #HTML('<center><img src="olympics.jpeg", width = 800, height = 400></center>'),
    
    tags$h2("Nature of the data"),
    tags$p(
      "We chose the Olympics as a topic because our group has a shared interest 
      in sports, and the event just happened this year. Also, the Olympics has 
      so many different components with a wide range of events and countries 
      competing that we can wrangle compelling data from. We also read this",a(" article ",
      href ="https://swimswam.com/tokyo-2020-olympic-games-watched-by-more-than-3-billion-people/"
      ), "which shows the popularity of the Games."
    ),
    
    # insert picture later
    #HTML('<center><img src="", width = 800, height = 400></center>'),
    
    tags$h2("Data Presented"),
    tags$p(
      "In the next few tabs, you'll be presented with a
      few pages of interactive dataset
      with a brief explanation of why we chose that graph
      and what patterns emerged from that.
      After that, you will be presented with a conclusion page that presents ",
      strong("Three Major Takeaways"), " from our findings."
    ),
    
    # HTML('<center><img src="", width = 800, height = 500></center>')
  )
)

# Create UI for interactive page 1

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
  titlePanel("Height and Weight"),
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
    "Explanation"
  )
)

# Second Interactive Page

#left side of second tab
scatter_sidebar_content <- sliderInput(inputId = "Total_Medals", 
              label = "Choose the total medal count range:",
              min = min(gdp_medals_data$Total_Medals), 
              max = max(gdp_medals_data$Total_Medals), 
              value = c(1, 25))

# right side of second tab 
#scatter_main_content <- mainPanel(
#  plotlyOutput("scatter"),
#)

#Whole tab of second tab
second_graph_page <- tabPanel(
  "Scatter View",
  titlePanel("Medal Count vs GDP"),
  sidebarLayout(
    sidebarPanel(
      scatter_sidebar_content
    ),
    mainPanel(
      plotlyOutput("scatter")
    )
  ),
  tags$p(
    "Explanantion"
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
  titlePanel("Medal Count for 2016 vs 2021"),
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
    "Explanation"
  )
)


ui <- navbarPage(
  "Olympics Data Project",
  intro_page,
  first_graph_page,
  second_graph_page,
  third_graph_page
)
