library(shiny)

shinyUI(fluidPage(
  titlePanel("Weather Forecast"),
  sidebarLayout (
    sidebarPanel(
      width = 2,
      h2(em("7 Day",style="color:blue")),
      h3(strong("100 % Guarantee",style="color:red")),
      img(src="Spain.png",height=100,width=100)
    ), #close sidebarPanel
    
    mainPanel(
      width = 10,
      h1("The rain",style="font-family: 'Helvetica'"),
      img(src="39.png",height=100,width=100),
      h2("In Spain", style="color:red"),
      br(),
      img(src="Spain.png",height=100,width=100),
      h3("Stays",span("mainly",style="color:green"),"in the plains."),
      br(),
      h1("But",span(strong("everywhere",style="color:orange"))),
      br(),
      h2("In",span(strong("Oklahoma!!!",style="color:red")))
    
    ) #mainPanel
  ) #sidebarLayout
)) #shinyUI & fluidPage
