###################################
##### minimal example – ui.R #####
###################################
library(shiny) # load shiny at beginning at both scripts
shinyUI(pageWithSidebar( # standard shiny layout, controls on the
  # left, output on the right
  headerPanel("Minimal example"), # give the interface a title
  sidebarPanel( # all the UI controls go in here
    textInput(inputId = "comment", # this is the name of the
              # variable- this will be
              # passed to server.R
              label = "Say something?", # display label for the
              # variable
              value = "" # initial value
    ),
    sliderInput(inputId = "howmany", min = 10, max = 100, label = "How many draws?", value=10)
  ),
  mainPanel( # all of the output elements go in here
    h3("This is you saying it"), # title with HTML helper
    plotOutput("plotDisplay") # this is the name of the output
    # element as defined in server.R
  )
))