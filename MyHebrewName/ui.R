library(shiny)

shinyUI(fluidPage(
     
     # Application title
     titlePanel("My Hebrew Name App"),
     
     # Sidebar text input where user enters name to be transliterated.
     sidebarLayout(
          sidebarPanel(
               h1("Type Your Name"),
               textInput(inputId = "name", label = "Name:", value = "Sheri")
          ), 
          # Transliteration display
          mainPanel(
               h3("Your Name In Hebrew"),
               textOutput("text")
          )
     )))
