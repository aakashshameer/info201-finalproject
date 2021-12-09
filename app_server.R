library(ggplot2)
library(dplyr)
library(tidyverse)
library(shiny)
library(scales)
library(stringr)

source("Chart1.R")
source("Chart3.R")
source("second_chart.R")
source("summary_info.R")
source("aggtable.R")

server <- function(input, output) {
  
  # First Weight Chart
  output$weight_chart <- renderPlotly({
    Avg_Weight_Chart_Data <- Avg_Weight_Chart_Data %>%
      filter(Sport %in% input$Sport_Weight)
    
    Chart_Avg_Weight <- ggplot(Avg_Weight_Chart_Data,
                               aes(Sport, Avg_Weight, col = Sex, fill = Sex)) +
      labs(x = "Sports", y = "Average Weight (kg)",
           title = "2016 Average Weight for Male and Female Gold Medal Athlethes") +
      geom_bar(position= "dodge", stat= "identity") 
    weight_chart <- ggplotly(Chart_Avg_Weight)
    
    return(weight_chart)
    
  })
  
  
  # First Height Chart
  output$height_chart <- renderPlotly({
    Avg_Height_Chart_Data <- Avg_Height_Chart_Data %>%
      filter(Sport %in% input$Sport_Height)
    
    Chart_Avg_Height <- ggplot(Avg_Height_Chart_Data,
                               aes(Sport, Avg_Height, col = Sex, fill = Sex)) +
      labs(x = "Sports", y = "Average Height (cm)",
           title = "2016 Average Height for Male and Female Gold Medal Athlethes") +
      geom_bar(position= "dodge", stat= "identity") 
    height_chart <- ggplotly(Chart_Avg_Height)
    
    return(height_chart)
    
  })
  
  #Second Chart
  output$scatter <- renderPlotly({
    medal_range <- gdp_medals_data %>% 
      filter(Total_Medals >= input$Total_Medals[1], Total_Medals <= input$Total_Medals[2])
    
    scatter <- ggplot(medal_range) +
      geom_point(data = medal_range,
                 mapping = aes(x=Total_Medals, y=GDP2016, fill = Country_Name,
                               text = paste("Country:", Country_Name))) +
      ggtitle("2016 GDP VS Medal Counts") +
      labs(x = "Medal Count", y = "GDP 2016", fill = "Countries") +
      scale_fill_brewer(palette = "Spectral")
    scatter <- ggplotly(scatter, tooltip = "text")
    return(scatter)
    
  })
  
  # Third Chart
  output$slope <- renderPlotly({
    tokyo_medals_data_new <- tokyo_medals_data_new %>%
      filter (Country_Name %in% input$Countries)
      stacked_bar_graph <- ggplot(tokyo_medals_data_new, aes(fill=Year, y=Medals, x=Country_Name)) + 
        geom_bar(position="stack", stat="identity") + 
        labs(x = "Medal Count", y = "Country", title = "Change in Total Medal Count from 2016 to 2021") + 
        coord_flip() + 
        scale_fill_manual(values = c("Blue", " Red"))
      
      slope <-ggplotly(stacked_bar_graph)
      
      return(slope)
  })
}
