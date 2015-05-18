shinyServer(function(input, output) {
  
  # You can access the value of the widget with input$checkbox_top, e.g.
  output$value_1 <- renderPrint({ input$checkbox_top })
  output$value_2 <- renderPrint({ 
    a <- !input$checkbox_top 
    return( a )
  })
  output$value_3 <- renderPrint({ 
    # browser()
    b <- ifelse(input$checkbox_top, "Checked", "Not Checked")
    # b <- ifelse(!input$checkbox_top, "Not Checked", "Checked")
    return( b )
  })
  
})
