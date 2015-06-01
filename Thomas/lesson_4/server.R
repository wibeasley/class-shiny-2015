library(shiny)
library(ggplot2)

# server.R

shinyServer(function(input, output) {
  
  output$text1a <- renderText({ 
    paste("You have selected", input$var1)
  })
  output$text2a <- renderText({ 
    paste("You have selected", tolower(input$var2))
  })
  output$lbl_range <- renderText({ 
    # browser()
    paste("You have selected", paste(input$sld_range, collapse = " to "))
    paste("You have selected", paste(range(input$sld_range), collapse = " to "))
  })
})