library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Is anyone there?"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(position="right",
    sidebarPanel(
      sliderInput("bins",
                 "Number of columns:",
                  min = 1,
                  max = 36,
                  value = 12)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
