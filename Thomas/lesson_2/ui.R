library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  shiny::tags$head(
    # includeCSS("./www/styles.css"), # Include our custom CSS
  
      tags$style('
        h1 { color:#7D64FF; }
        .accent { color:#7D64FF;  }
        # body { background-image:url("stopsign.jpg"); }
        .outcome { text-align:right; font-size:300%";}
      ')  #Closes tags$style
  
  ), #Closes tags$head  
  titlePanel("title panel", img(src="./stopsign.jpg", height = 25, width = 25, align = "left")),
  
  #position options
  sidebarLayout(position = "left", #default
  #sidebarLayout(position = "right",
  


    sidebarPanel("sidebar panel",
                 img(src="./stopsign.jpg", height = 25, width = 25, align = "left")),
    mainPanel(
      h6("Title 1", align = "center"),
      p("this is some really important text right here,"),
      p("but it won't fit on 1 line!"),
      p("To use REDCap go to", style = "color:red; font-family: 'Brush Script MT'; font-size:300%"),
      p("Outcome Only", class = "outcome"),
      p("Accent Only", class = "accent"),
      p("Outcome and Accent", class = "outcome accent"),
      a("https://bbmc.ouhsc.edu"),
      br(),
      h5("Title 2", align = "right"),
      br(),
      h4("Title 3", align = "center"),
      br(),
      h3("Title 4", align = "left"),
      br(),
      h2("Title 5", align = "center"),
      br(),
      h1("Title 6", align = "right"),
      # img src="https://miechvprojects.ouhsc.edu/redcap/redcap_v4.11.2/MIECHV/stopsign.jpg" alt="stopsign"
      img(src="./stopsign.jpg", height = 200, width = 200, align = "left", alt="stopsign")
      )
  )
))
