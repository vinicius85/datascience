library(UsingR)
library(caret)

rm(kMeans1)

shinyServer(
  function(input, output) {
    
    datasetInput <- reactive({
      switch(input$dataset,
             "iris" = iris
            )
    })
    
    output$head <- renderPrint({
      dataset <- datasetInput()  
      if(!is.null(dataset)){
        head(dataset, n = 5)
      }
    })
    
    output$cluster <- renderTable({
      dataset <- datasetInput()
      if(!is.null(dataset)){
        
        kMeansFit <- kmeans(subset(dataset,select=-c(Species)),centers=input$num_clusters)
        dataset$clusters <- as.factor(kMeansFit$cluster)
        
        modelFit <- train(clusters ~.,data=subset(dataset,select=-c(Species)),method="rpart")
        table(predict(modelFit,dataset),dataset$Species)
      }
    })
    
  }
)