library(shiny)
library(datasets)
library(leaflet)
library(Lab5)



shinyServer(function(input, output) {


  output$mymap <- renderLeaflet({
    res <- google_api(input$address)

    leaflet() %>%
      setView(lng = res$longitude, lat = res$latitude, zoom = 14) %>%
      addTiles() %>%
      addMarkers(lat = res$latitude, lng = res$longitude)
  })

  # output$mymap <- renderLeaflet({
  #   input$coordinate
  #   leaflet() %>%
  #     setView(lng = res$longitude, lat = res$latitude, zoom = 14) %>%
  #     addTiles() %>%
  #     addMarkers(lat = res$latitude, lng = res$longitude)
  # })
})
