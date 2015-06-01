library(shiny)
library(ggplot2)

# server.R

shinyServer(function(input, output) {
  
  output$text1 <- renderText({ 
    paste("You have selected", input$var1)
  })
  output$text2 <- renderText({ 
    paste("You have selected", input$var2)
  })
  output$text3 <- renderText({ 
    paste("You have selected", input$range)
  })
}
)