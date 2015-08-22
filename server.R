library(shiny)

shinyServer(function(input, output) {
  output$dailycal <- renderPrint({
    cat(paste(
    ifelse(input$gender=="male" , 
           round(as.numeric(input$active)*(66.47+ (6.25 * input$weight) + (5.0 * input$height) - (6.75 * input$age))),
           round(as.numeric(input$active)*(665.09 + (4.35 * input$weight) + (1.84 * input$height) - (4.67 * input$age)))),
    "calories per day"
    ))
  })
})