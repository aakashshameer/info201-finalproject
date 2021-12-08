library(shiny)
library(tidyverse)
library(plotly)

source("Server.R")

# data_wa <- read.csv("data/GHG_Reporting_Program_Publication.csv") %>%
#  mutate(County = tolower(County))

# Create UI for Intro page

intro_page <- tabPanel(
  "Introduction",
  #includeCSS("style.css"),
  tags$body(
    titlePanel(tags$h1("An overview of the project")),
    tags$p(
      "The reflection questions we wish to answer was", em("What height and weight classes for male and female athletes show the most success in different events?"),
      ", ", em("How do countries’ GDP relate to their medal counts?"), "and ", em("How do the results of the 2021 Olympics for different countries compare to that of past Olympic games?"), 
      ". Those were the questions that we had in our minds when starting this assignment."
    ),
    
    img(src="olympics.jpeg", align = "center"),
    #HTML('<center><img src="olympics.jpeg", width = 800, height = 400></center>'),
    
    tags$h2("Nature of the data"),
    tags$p(
      "We chose the Olympics as a topic because our group has a shared interest 
      in sports, and the event just happened this year. Also, the Olympics has 
      so many different components with a wide range of events and countries 
      competing that we can wrangle compelling data from.We also read this",a(" article ",
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
sport_check_weight <- radioButtons(inputId = "Sport_Weight",
                                         label = "Sports for Weight",
                                         choices = c("Basketball", "Cycling", "Gymnastics",
                                                     "Swimming", "Tennis", "Weightlifting"),
                                         selected = c("Basketball"))

# Widget to select sport for height chart 
sport_check_height <- radioButtons(inputId = "Sport_Height",
                                         label = "Sports for Height",
                                         choices = c("Basketball", "Cycling", "Gymnastics",
                                                     "Swimming", "Tennis", "Weightlifting"),
                                         selected = c("Basketball"))

first_graph_page <- tabPanel(
  "Bar View",
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

# Third page
select_country <- checkboxGroupInput(inputId = "Countries", 
                                     label = "Countries", 
                                     choices = c("United States", "Japan", "India", "Great Britain", "Germany", "China"), 
                                     selected = c("United States", "Japan", "India", "Great Britain", "Germany", "China")
                                     )

third_graph_page <- tabPanel(
  "Bar View",
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
  third_graph_page
)
