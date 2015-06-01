library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("censusVis"),

  sidebarLayout(
    sidebarPanel(
      helpText("Create domographic maps owth info from the 2010 US Census"),
      
      selectInput("var",
                  label = "Choose a variable to display",
                  choices = list("Percent While", "Percent Black","Percent Hispanic", "Percent Asian"),
                  selected = "Percent White"),
      
      sliderInput("Range", 
                  label = "Range of interests:", 
                  min = 0, max = 100, value = c(0,100))
      ),
    mainPanel()
  )
))
    
