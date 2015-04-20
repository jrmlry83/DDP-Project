# ui.R

shinyUI(fluidPage(
  titlePanel("Welcome to the Body Mass Index App!"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Calculate your Body Mass Index with this handy app."),
      
      radioButtons("units", label = h5("Are you using metric (kg and cm) or Imperial (lb and in) units?"),
                   choices = list("Metric", "Imperial"),selected = "Metric"),
      
      numericInput("weight", 
                   label = h5("Enter your weight (in units selected above)"), 
                   value = 1),
      
      numericInput("height", 
                   label = h5("Enter your height (in units selected above)"), 
                   value = 1),
      
      actionButton("goButton", "Go!")
    ),
    
    mainPanel(
      h3("Calculate your Body Mass Index (BMI) by following the steps below:"),
      p("1. Choose to use metric or imperial units in the side panel to the left"),
      p("2. Enter in your weight in kilograms (metric) or pounds (imperial)"),
      p("3. Enter in your height in centimetres(metric) or inches (imperial)"),
      p("4. Press the Go button!"),
      h4("Results:"),
      h4(textOutput("text1"))
    )
  )
))