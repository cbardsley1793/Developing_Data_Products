library(shiny)

shinyServer(function(input, output) {
        model1 <- lm(eruptions ~ waiting, data = faithful)

        model1pred <- reactive({
                wtInput <- input$sliderWT
                predict(model1, newdata = data.frame(waiting = wtInput))
        })

        output$plot1 <- renderPlot({
                wtInput <- input$sliderWT
                plot(eruptions ~ waiting, data = faithful,
                     xlab = "Wait Time to Next Eruption (Minutes)", ylab = "Eruption Duration (Minutes)")
                abline(model1, col = "blue", lwd = 2)
                points(wtInput, model1pred(), col = "blue", pch = 16, cex = 2)
        })

        output$pred1 <- renderText({
                model1pred()
        })
})
