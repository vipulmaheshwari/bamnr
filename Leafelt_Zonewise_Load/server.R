library(leaflet)
library(ggplot2)
library(maps)
uspop2000 <- read.csv("C:/Users/abc/Desktop/R practice/r_csv/test_data_Nitesh.csv")
d2 = uspop2000 %>%
  group_by(Center,  Lat,  Long) %>%
  summarise(ZnA = sum(Zn0), ZnB=sum(Zn1), ZnC = sum(Zn2), ZnD= sum(Zn3), ZnE = sum(Zn4))
uspop2000 = d2
# From a future version of Shiny
bindEvent <- function(eventExpr, callback, env=parent.frame(), quoted=FALSE) {
  eventFunc <- exprToFunction(eventExpr, env, quoted)
  
  initialized <- FALSE
  invisible(observe({
    eventVal <- eventFunc()
    if (!initialized)
      initialized <<- TRUE
    else
      isolate(callback())
  }))
}

shinyServer(function(input, output, session) {
  
  makeReactiveBinding('selectedCenter')
  
  # Define some reactives for accessing the data
  
  # Retrieve the name of the column that contains the selected year's
  # population
  znCol <- reactive({
    paste('Zn', input$zone, sep='')
  })
  
  popSeries <- function(center) {
    c(
      sum(center$ZnA),
      sum(center$ZnB),
      sum(center$ZnC),
      sum(center$ZnD),
      sum(center$ZnE)
    )
  }
  
  # The cities that are within the visible bounds of the map
  centersInBounds <- reactive({
    if (is.null(input$map_bounds))
      return(uspop2000[FALSE,])
    bounds <- input$map_bounds
    latRng <- range(bounds$north, bounds$south)
    lngRng <- range(bounds$east, bounds$west)
    
    subset(uspop2000,
           Lat >= latRng[1] & Lat <= latRng[2] &
             Long >= lngRng[1] & Long <= lngRng[2])
  })
  
  # The top N cities (by population) that are within the visible bounds
  # of the map
  topCentersInBounds <- reactive({
    centers <- centersInBounds()
    centers <- head(centers[order(centers[[znCol()]], decreasing=TRUE),],
                   as.character(input$maxCenters))
  })
  
  # Create the map; this is not the "real" map, but rather a proxy
  # object that lets us control the leaflet map on the page.
  map <- createLeafletMap(session, 'map')
  
  observe({
    if (is.null(input$map_click))
      return()
    selectedCenter <<- NULL
  })
  
  radiusFactor <- 1000
  observe({
    map$clearShapes()
    centers <- topCentersInBounds()
    
    if (nrow(centers) == 0)
      return()
    
    map$addCircle(
      centers$Lat,
      centers$Long,
      sqrt(centers[[znCol()]]) * radiusFactor / max(5, input$map_zoom)^2,
      row.names(centers),
      list(
        weight=1.2,
        fill=TRUE,
        color='black'
      )
    )
  })
  
  observe({
    event <- input$map_shape_click
    if (is.null(event))
      return()
    map$clearPopups()
    
    isolate({
      centers <- topCentersInBounds()
      center <- centers[row.names(centers) == event$id,]
      selectedCenter <<- center
      content <- as.character(tagList(
        tags$strong(paste(center$Center, center$State)),
        tags$br(),
        sprintf("Estimated Load Density, %s:", input$zone),
        tags$br(),
        prettyNum(center[[znCol()]], big.mark=',')
      ))
      map$showPopup(event$lat, event$lng, content, event$id)
    })
  })
  
  output$desc <- reactive({
    if (is.null(input$map_bounds))
      return(list())
    list(
      lat = mean(c(input$map_bounds$north, input$map_bounds$south)),
      lng = mean(c(input$map_bounds$east, input$map_bounds$west)),
      zoom = input$map_zoom,
      shownCenters = nrow(topCentersInBounds()),
      totalCenters = nrow(centersInBounds())
    )
  })
  
  output$data <- renderTable({
    if (nrow(topCentersInBounds()) == 0)
      return(NULL)
    
    data.frame(
      Center = paste(topCentersInBounds()$Center, topCentersInBounds()$State),
      Load = topCentersInBounds()[[znCol()]])
  }, include.rownames = FALSE)
  
  output$centerTimeSeriesLabel <- renderText({
    if (is.null(selectedCenter)) {
      'Total Load Density of visible centers'
    } else {
      paste('Load Dennsity of ',
            selectedCenter$Center,
            ', ',
            selectedCenter$State,
            sep='')
    }
  })
  
  output$centerTimeSeries <- renderPlot({
    centers <- NULL
    if (!is.null(selectedCenter))
      centers <- selectedCenter
    else
      centers <- topCentersInBounds()
    
    popData <- popSeries(centers) / 1000
    df <- data.frame(zone = c("A","B", "C", "D", "E"), pop = popData)
    p <- ggplot(df, aes(x = zone, y = pop)) + geom_point()
    p <- p + ylim(c(0, max(popData)))
  p <- p + ylab('Load Density (thousands)')
  #p <- p + scale_x_continuous(breaks = seq("A","B","C","D","E"))
    print(p)
  })
})
