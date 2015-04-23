library(leaflet)
library(ShinyDash)

shinyUI(fluidPage(
  tags$head(tags$link(rel='stylesheet', type='text/css', href='styles.css')),
  leafletMap(
    "map", "100%", 400,
    initialTileLayer = "//{s}.tiles.mapbox.com/v3/jcheng.map-5ebohr46/{z}/{x}/{y}.png",
    initialTileLayerAttribution = HTML('Maps by <a href="http://www.mapbox.com/">Mapbox</a>'),
    options=list(
      center = c(28.52741, 77.27714),
      zoom = 8,
      maxBounds = list(list(17, -180), list(59, 180))) %>%
      addMarkers(uspop2000$Long, uspop2000$Lat, icon = JS("L.icon({
                                                          iconUrl: 'C:/Users/abc/Desktop/R practice/r_image/symbol_dv.png',
                                                          iconSize: [30, 30]
                                                          })"))
    
      ),
  fluidRow(
    column(8, offset=3,
           h2('DelhiVery-Load Analysis'),
           htmlWidgetOutput(
             outputId = 'desc',
             HTML(paste(
               'The map is centered at <span id="lat"></span>, <span id="lng"></span>',
               'with a zoom level of <span id="zoom"></span>.<br/>',
               'Top <span id="shownCities"></span> out of <span id="totalCities"></span> visible cities are displayed.'
             ))
           )
    )
  ),
  hr(),
  fluidRow(
    column(3,
           selectInput('zone', 'Select Zone', c("A", "B", "C", "D", "E")),
           selectInput('maxCenters', 'Maximum center to display', choices=c(
             5, 15, 25, 35, 45, 55, 65, 75, 85, All = 100000
           ), selected = 100)
    ),
    column(4,
           h4('Visible centers'),
           tableOutput('data')
    ),
    column(5,
           h4(id='centerTimeSeriesLabel', class='shiny-text-output'),
           plotOutput('centerTimeSeries', width='100%', height='250px')
    )
  )
      ))