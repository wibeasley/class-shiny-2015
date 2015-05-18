# Lesson 4 Display Reactive Output

shinyUI(fluidPage(
  titlePanel("censusVis"),
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with information from the 2010 United States Census."),
      selectInput("var",
      label = "Choose a variable to display:",
      choices = list("Percent White", "Percent Black", "Percent Hispanic", "Percent Asian"),
      selected = "Percent White"),
      sliderInput("range",
        label = "Range of Interest:",
        min = 0, max = 100, value = c(0, 100))
    ), #sidebarPanel
    mainPanel(
      textOutput("text1"),
      textOutput("rangeval")
    ) #mainPanel
  ) #sidebarLayout
)) #shinyUI & fluidPage
