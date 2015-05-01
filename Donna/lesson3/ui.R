library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("censusVis"),

  # Sidebar with Selectinput
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with information from the 2010 US Census."),
      
      selectInput("select",
          label="Choose a variable to display",
          choices=list("Percent White", "Percent Black","Percent Hispanic","Percent Asian"),
                 selected="Percent White"
                 ),
      
      sliderInput("range",
          label="Range of interest:",
          min=0,max=100,value=c(0,100))
      ),
      
    mainPanel(
      textOutput("text1"))

    
    
  )
))

