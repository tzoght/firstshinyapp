library(shiny)
# https://tzoght.shinyapps.io/firstshinyapp/
# https://github.com/tzoght/firstshinyapp

ui <- fluidPage(
  textInput("name", "What's your name?",value="John"),
  numericInput("age", "How old are you?", value = 25),
  textOutput("greeting"),
)
server <- function(input, output, session) {  
  output$greeting <- renderText({
    paste0("Hello ", input$name,"! You are ", input$age, " years old.")
  })
}
shinyApp(ui, server)
