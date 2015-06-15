library(shiny)
library(maps)
library(mapproj)
counties <- readRDS("./data/counties.rds")
source("helpers.R")

shinyServer(function(input, output){
  
  output$race <- renderText({
    paste("You've selected this", input$var)
  })
  
  output$minMax <- renderText({
    paste("Your range is between", input$range[1], "and", input$range[2])
  })
  
}
)

