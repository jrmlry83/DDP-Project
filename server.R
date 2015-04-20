# server.R

shinyServer(
  function(input, output) {
    
    bmiText <- eventReactive(input$goButton, {
      factor <- 10000
      if(input$units=="Imperial") {
        factor <- 703
      }
      bmi <- round(input$weight * factor / input$height^2, digits = 1)
      paste("Your BMI is", bmi)
    })
    
    output$text1 <- renderText({
      bmiText()
    })
      
    })