source("Chart1.R")

library(ggplot2)
library(dplyr)
library(tidyverse)
library(shiny)
library(scales)

server <- function(input, output) {
  output$weight_chart <- renderPlotly({
    Avg_Weight_Chart_Data <- Avg_Weight_Chart_Data %>%
      filter(Sport == input$Sport_Weight)
    
    Chart_Avg_Weight <- ggplot(Avg_Weight_Chart_Data,
                               aes(Sport, Avg_Weight, col = Sex, fill = Sex)) +
      labs(x = "Sports", y = "Average Weight (kg)",
           title = "2016 Average Weight for Male and Female Gold Medal Athlethes") +
      geom_bar(position= "dodge", stat= "identity") 
    weight_chart <- ggplotly(Chart_Avg_Weight)
    
    return(weight_chart)
    
  })
  
  output$height_chart <- renderPlotly({
    Avg_Height_Chart_Data <- Avg_Height_Chart_Data %>%
      filter(Sport == input$Sport_Height)
    
    Chart_Avg_Height <- ggplot(Avg_Height_Chart_Data,
                               aes(Sport, Avg_Height, col = Sex, fill = Sex)) +
      labs(x = "Sports", y = "Average Height (cm)",
           title = "2016 Average Height for Male and Female Gold Medal Athlethes") +
      geom_bar(position= "dodge", stat= "identity") 
    height_chart <- ggplotly(Chart_Avg_Height)
    
    return(height_chart)
    
  })
  
  output$slope <- renderPlotly({
    tokyo_medals_data_new <- tokyo_medals_data_new %>%
      filter (Country_Name== input$Countries)
      stacked_bar_graph <- ggplot(tokyo_medals_data_new, aes(fill=Year, y=Medals, x=Country_Name)) + 
        geom_bar(position="stack", stat="identity") + 
        labs(x = "Medal Count", y = "Country", title = "Change in Total Medal Count from 2016 to 2021") + 
        coord_flip() + 
        scale_fill_manual(values = c("Blue", " Red"))
      
      slope <-ggplotly(stacked_bar_graph)
      
      return(slope)
  })
  
  
  
}
