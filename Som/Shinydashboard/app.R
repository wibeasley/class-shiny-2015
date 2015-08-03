library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Basic Dashboard"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon =icon("dashbaord")),
      menuItem("Widgets", tabName = "widgets", icon = icon("th"))
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem(tabName = "dashboard",
        fluidRow( 
            box(title = "Controls",
            sliderInput("slider", "Number of obervations:",1,100,50)),
            box(plotOutput("plot1", height = 250))
    )
  ),
  
  tabItem(tabName = "widgets",
          h2("Widgets tab content")
    )
  )
)
)

server <- function(input, output){
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
}
shinyApp(ui, server)