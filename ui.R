shinyUI(
  pageWithSidebar(
    headerPanel("My Stock Analysis Tool (MyStAT)"),
    
    sidebarPanel(
      h3("Introducing MyStAT"),
      
      p("Hi folks, it's simple: All you need to do is to select the stock symbol
        and the chart type, then you will see the year-to-date (YTD)
        price and volume trend for your selected stock.
        So far this is a prototype app. I will include more widgets in the future.
        Well, give it a spin and have fun :)"),
      
      selectInput(inputId = "tickerSymbol",
                  label = "Please select stock ticker symbol:",
                  choices = c('AAPL', 'AMZN', 'GOOG', 'MSFT'),
                  selected = 'MSFT'),
      
      radioButtons("chartType",
                   "Please select chart type",
                   c('barChart', 'candleChart', 'lineChart'),
                   'barChart')
    ),
    
    mainPanel(
      plotOutput(outputId = "main_plot")
    )
  ) 
)