shinyUI(fluidPage(
  
  # Copy the line below to make a checkbox
  checkboxInput("checkbox_top", label = "Choice A", value = TRUE),
  # checkboxInput("check_box", label = "Choice A", value = TRUE),
  
  hr(),
  hr(),
  hr(),
  # verbatimTextOutput(outputId="value_1")
  fluidRow(
    column(width=2, verbatimTextOutput("value_1")),
    column(width=2, verbatimTextOutput("value_2")),
    column(width=2, verbatimTextOutput("value_3"))
  )
  
))
