library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  directoryData <- getwd()
  
  output$diagnostic_info <- renderText({
    return( paste0(
      "<table>",
        "<tr><td>Working Directory:&nbsp;<td/><td>", directoryData, "<td/><tr/>",
        "<tr><td>Server Code Last Saved:&nbsp;<td/><td>", file.info("server.R")$mtime, "<td/><tr/>",
        "<tr><td>UI Code Last Saved:&nbsp;<td/><td>", file.info("ui.R")$mtime, "<td/><tr/>",
      "<table/>"
    ) )
  })
})
