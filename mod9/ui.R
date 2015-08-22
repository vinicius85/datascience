library(shiny)

#transformar o head em reactive

shinyUI(fluidPage(
  
  headerPanel(title = "Dataset Cluster Analysis"),
  
  sidebarPanel(
  
    selectInput("dataset", "Dataset: ", c("Choose dataset", "iris")),
    numericInput("num_clusters", "Select number of clusters:", 3, min = 1, max = 10),
    
    #Parameterize train/test
    
    submitButton('Predict!'),
    
    h6('by vinicius85')
  ),
  
  mainPanel(
    tabsetPanel(type = "tabs", 
                tabPanel("Prediction", 
                         verbatimTextOutput("head"),
                         
                         tableOutput("cluster")
                
                ), 
                tabPanel("Readme", 
                         h3("Cluster prediction analysis"),
                         h4("Usage"),
                         h6("First, select dataset, (just iris is currently available), then select number of clusters and click Predict! "),
                         h6("Output is dataset head with just first 5 instances"),
                         h6("At last, table output prediction shows number of instances comparing with real labels")
                )
    )
  )
))