require(quantmod)

shinyServer(function(input, output) {
  
  output$main_plot <- renderPlot({
    stock_data <- getSymbols(input$tickerSymbol, from = "2014-01-01", auto.assign=FALSE)
    
    if (input$chartType == 'barChart') barChart(stock_data)
    else if (input$chartType == 'candleChart') candleChart(stock_data)
    else lineChart(stock_data)
    
  })
})