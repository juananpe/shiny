######################################
##### minimal example - server.R #####
######################################
library(shiny) # load shiny at beginning at both scripts
shinyServer(function(input, output) { # server is defined within
  # these parentheses
  output$plotDisplay <- renderPlot({ # mark function as reactive
    
    hist(rnorm(input$howmany), main = input$comment)    
    
  })
})