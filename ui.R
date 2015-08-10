
library(shiny)
# This application will plot the histogram of a  poisson distribution according to 
# the input of the values and lambda


#The first step is to define UI for the application that draws a histogram
        shinyUI(pageWithSidebar(
                
# The Header Panel will contain the title of the application      
        headerPanel("Project Assignment - Data Product"),
        
# Sidebar Panel will contain the control widgets to enter the inputs
        sidebarPanel(
 
# I chose the widget "numericInput" to enter the lambda number,  varying from 0 to 100, the
# initial value was set as 5                   
                          
        numericInput('a', 'Lambda', 5, min = 0, max = 100, step = 1),       

# I chose the widget "sliderInput" to enter the number of values to draw the histogram,
# "n" is the variable which will receive the input , varying from 1000 to 5000, the
# initial value was set as 2500              
           
        sliderInput('n', 'Number of Random Values', min = 1000,  max = 5000, value = 2500)),

#the main panel is going to show the histogram whose name for the server is "poisson"          
        mainPanel( plotOutput("poisson"))
  
))

      