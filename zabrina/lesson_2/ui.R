<<<<<<< HEAD
# Lesson 4 Display Reactive Output
=======
# ui.R
>>>>>>> origin/master

shinyUI(fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
<<<<<<< HEAD
  sidebarPanel(
    helpText("Create demographic maps with information from the 2010 United States Census."),
    selectInput("var",
    label = "Choose a variable to display:",
    choices = list("Percent White", "Percent Black", "Percent Hispanic", "Percent Asian"),
    selected = "Percent White"),
    sliderInput("range",
      label = "Range of Interest:",
      min = 0, max = 100, value = c(0, 100))
  ),
  mainPanel(
    textOutput("text1"),
    textOutput("rangeval")
=======
    sidebarPanel(
      h2("Installation"),
      p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
      code('install.packages("shiny")'),
      br(),
      br(),
      br(),
      br(),
      img(src = "bigorb.jpg", height = 72, width = 72),
      "shiny is a product of ", 
      span("RStudio", style = "color:blue")
    ),
    mainPanel(
      h1("Introducing Shiny"),
      p("Shiny is a new package from RStudio that makes it ", 
        em("incredibly easy"), 
        " to build interactive web applications with R."),
      br(),
      p("For an introduction and live examples, visit the ",
        a("Shiny homepage.", 
          href = "http://www.rstudio.com/shiny")),
      br(),
      h2("Features"),
      p("* Build useful web applications with only a few lines of code—no JavaScript required."),
      p("* Shiny applications are automatically 'live' in the same way that ", 
        strong("spreadsheets"),
        " are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser.")
>>>>>>> origin/master
    )
  )
))
