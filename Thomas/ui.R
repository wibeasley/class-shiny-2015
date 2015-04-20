library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Hello Shiny!"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins", "Number of bins:", min = 1, max = 100, value = 10)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      
      sliderInput("bins23", "Hey you guys", min = 1, max = 100, value = 10)
    )
  )
))
