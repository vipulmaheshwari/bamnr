
library(shiny)
Breach_Analysis <- read.csv("/data//delhivery/summary_data_proc_analysis.csv")
shinyServer(function(input, output) {
  datasetInput <- function(A){
    D1=
      Breach_Analysis %>%
      filter(zn==A)%>%
      select(X, pday, Breach_flag, count )
    
    #D2=melt(D1, id=c("pday", "X"))
    D3 = dcast(D1, pday+X~Breach_flag  , val.var="count")
    colnames(D3) <- c("pday","X","breach_zero","breach_one")
    D3[is.na(D3)] <- 0
    
    D4 = D3 %>%
      group_by (pday) %>%
      summarise(b_one = sum(as.numeric(breach_one)), b_zero = sum(as.numeric(breach_zero)))
  }
  
  output$view <- renderGvis({
    gvisLineChart(datasetInput(input$zn))
  })
  
})
