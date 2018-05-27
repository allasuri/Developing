library(shiny)

count<-function(weight,height,range,age,Gender) {
  if (Gender==1 ) (655+(9.6*weight)+(1.8*height)-(4.7*9))*range
  else  (66+(13.7*weight)+(5*height)-(6.8*25))*range
}


server <- function(input, output) {
  
  
  output$inputweightvalue <- renderPrint({input$weight})
  output$inputheightvalue <- renderPrint({input$height})
  output$inputGendervalue <- renderPrint({input$Gender})
  output$inputagevalue <- renderPrint({input$age})
  output$inputrangevalue <- renderPrint({input$range})
  output$estimation <- renderPrint({count(input$weight,input$height,input$range,input$age,input$Gender)})
}
