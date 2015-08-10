
library(shiny)
# Define server logic required to draw a histogram
        shinyServer(function(input, output) {
     
        
# Expression that will generate a histogram. The expression is
# wrapped in a call to renderPlot to indicate that:
#
#  1) It is "reactive" and therefore should re-execute automatically
#     when inputs change
#  2) Its output type is a plot   
        
        output$normal <- renderPlot({
             
# draw the histogram with the specified number of observations                 
                Normal_Distribution <- rnorm(input$a)
                
            
                hist(Normal_Distribution, freq = FALSE, col = "red")
                curve(dnorm, col = 4, add = TRUE)
                
                
        })
})

             