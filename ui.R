
library(shiny)

# This application will plot the histogram of a  normal distribution according to 
# the input of the observations


# The first step is to define UI for the application that draws a histogram
        shinyUI(pageWithSidebar(
    
# The Header Panel will contain the title of the application   
        headerPanel("Project Assignment - Data Product"),

# Sidebar Panel will contain the control widgets to enter the input
        sidebarPanel(
                

# I chose the widget "sliderInput" to enter the number of observations to draw the histogram,
# "a" is the variable which will receive the input , varying from 10 to 5000 observations, the
# initial value was set as 1000           
        sliderInput("a", "Number of Observations", min = 10,  max = 5000, value = 1000)),
             
#the main panel is going to show the histogram whose is name for the server is "normal"               
        mainPanel( plotOutput("normal"))
  
))

        
     