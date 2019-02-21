library(shiny)

shinyUI(fluidPage(
     
     # Application title
     titlePanel("My Hebrew Name App"),
     
     # Sidebar text input where user enters name to be transliterated.
     sidebarLayout(
          sidebarPanel(
               h3("Type your name to populate the Hebrew transliteration."),
               textInput(inputId = "name", label = "Name:", value = "Sheri")
          ), 
          # Transliteration display
           mainPanel(
               h2("Your Name In Hebrew"),
               h2(textOutput("text"))
          )
     )))
