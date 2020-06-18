#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
    titlePanel("Body Mass Index (BMI) Calculator"),
    sidebarLayout(sidebarPanel(
        helpText("The body mass index (BMI) calculator. Please, input your mass and height."),
        sliderInput(
            inputId = "height",
            label = strong("Your height in inches:"),
            min = 36,
            max = 100,
            value = 65
        ), #User height input slider
        sliderInput(
            inputId = "mass",
            label = strong("Your weight in pounds:"),
            min = 50,
            max = 300,
            value = 74
        ), #User mass input slider
        h5("The BMI is an attempt to quantify the amount of tissue mass (muscle, fat, and bone) in an individual, and then categorize that person as underweight, normal weight, overweight, or obese based on that value."),
    ),
    
    mainPanel(
        uiOutput("user_data"), #Text with the user data
        plotOutput("plot", height = "175px", width = "100%"), #Colorful plot of the user BMI
        uiOutput("results") #Text results
    ))
))
