library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot

  output$distPlot <- renderPlot({
    x <- faithful$waiting  # Old Faithful Geyser data
    if( is.null(x) ) stop("The desired variable to graph was not found.")
    
    # bin_breaks <- seq(from=min(x), to=max(x), length.out = input$bin_count + 1)
    bin_breaks <- seq(from=min(x), to=max(x), by=input$bin_width)

    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, col = 'darkgray', border = 'white')
    qplot(x, breaks=bin_breaks)
  })
})
