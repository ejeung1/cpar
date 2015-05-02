scnlDat <- readRDS("scnl.rds")

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  ###################### first row starts here
  fluidRow(
    column(12,
  # Application title takes all 12 column spaces
  titlePanel("Selected Characteristics for Nebraska Legistlative Districts from the 2008-2012 American Community Survey")
    )),
  
  fluidRow(
    column(5,
           wellPanel(
             selectInput("selecte", 
                         label ="Figure",
                         choices = myFigure, 
                         selected = myFigure[1]),
            
             "This is a project created for CPAR at UNO. For more information 
              about this project please visit github repository 
              https://github.com/ejeung1/cpar"
           )
    ),
    
  fluidRow(
    column(5, 
           plotOutput("myPlot",height = "900px",width="350px")
    )
    
  )
))
