#Lesson 5 census map


library(maps)
library(mapproj)
counties <- readRDS("data/counties.rds")
source("helpers.R")

#Where you put shinyServer in server.R determines how many times it runs
#Shiny will run the entire script (ui.R) the first time you runApp
#Then when change by user is detected (var or range), the app returns to the function with new values
#switch changes the values of a widget into R expressions


library(shiny)
shinyServer(
  function(input, output) {
    output$map <- renderPlot({
      data <- switch(input$var, 
                     "Percent White" = counties$white,
                     "Percent Black" = counties$black,
                     "Percent Hispanic" = counties$hispanic,
                     "Percent Asian" = counties$asian)
      
      color <- switch(input$var, 
                      "Percent White" = "darkgreen",
                      "Percent Black" = "black",
                      "Percent Hispanic" = "darkorange",
                      "Percent Asian" = "darkviolet")
      
      legend <- switch(input$var, 
                       "Percent White" = "% White",
                       "Percent Black" = "% Black",
                       "Percent Hispanic" = "% Hispanic",
                       "Percent Asian" = "% Asian")
      
      percent_map(var = data, 
                  color = color, 
                  legend.title = legend, 
                  max = input$range[2], 
                  min = input$range[1])
    })
  }
)