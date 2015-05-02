library(ggplot2)
library(scales)
library(dplyr)

dat <- readRDS("scnl_acs0812.rds") %>%
  filter() %>%
  mutate()

shinyServer(function(input, output) {
    
  # setting the reactive environment 
  dataInput <- reactive({
    subset(dat,
          Figure==input$selectedTable)
  })
  
  # Plotting the 17 bar plots
  # Need tabs here.
  output$myPlot <- renderPlot({
    ggplot(dataInput(), aes(reorder(district,rate),rate))+ 
      geom_bar()+
      coord_flip() + theme_bw() 
  
  })
  
