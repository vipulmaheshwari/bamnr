
library(shiny)

shinyUI(fluidPage(
  # Application title
  titlePanel(list(tags$head(tags$style(".span12 {background-color: black;}")),
                  ("PROCESS ANALYSIS")
                  , HTML('<img src="C:/Users/abc/Desktop/R practice/Process_Analysis_App/logo_delhivery.jpg", height="50px" ,width="50px"style="float:right"/>'
                  ))), hr(),
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(        selectInput("zn", "Zone:", 
                                     choices=c("A", "B", "C", "D"))
    ),
    # Show a plot of the generated distribution
    mainPanel(h3("Line Graph"),
              htmlOutput("view")
    )  )))

