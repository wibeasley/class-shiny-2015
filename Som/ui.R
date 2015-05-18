library(shiny)

# Define UI that draws histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Hello Shiny"),
  
  # Sidebar with slider input for the bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins", "Number of bins:", min =1, max =50, value =30)
      ),
    
    # Show a plot of generated distribution
    mainPanel(
      plotOutput("distplot"),
      sliderInput("bins23", "Numer of bins 3:", min =1, max=50, value=30)
      )
    )
  ))