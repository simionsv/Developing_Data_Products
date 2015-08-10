
library(shiny)
# Define server logic required to draw a histogram
        shinyServer(function(input, output) {
# Expression that will generate a histogram. The expression is
# wrapped in a call to renderPlot to indicate that:
#
#  1) It is "reactive" and therefore should re-execute automatically
#     when inputs change
#  2) Its output type is a plot  
        
        output$poisson <- renderPlot({
# draw the histogram with the specified number of observations and lambda    
                Poisson_Distribution <- rpois(input$n, input$a)
                
                hist(Poisson_Distribution, breaks=10, col='red')
               
                
                
        })
})

  