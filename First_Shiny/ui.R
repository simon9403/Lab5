library(shiny)

shinyUI(pageWithSidebar(


  headerPanel("Google_API"),

  sidebarPanel(

    textInput("address", "Address", "Eiffel+Tower,Paris"),
    textInput("coordinate","Coordinate","39.07421,21.82431")
  ),

  mainPanel(


    leafletOutput("mymap")
  )
))

