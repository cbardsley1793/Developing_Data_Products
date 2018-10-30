library(shiny)

shinyUI(fluidPage(
        titlePanel("Predict Old Faithful Geyser Eruption Duration Based on Wait Time"),
        sidebarLayout(
                sidebarPanel(
                        sliderInput("sliderWT", "Wait Time to Next Old Faithful Eruption (in Minutes)", 50, 100, value = 75)
                        # h4("Predicted Eruption Duration (in Minutes):"),
                        # textOutput("pred1")
                ),
                mainPanel(plotOutput("plot1"),
                          h4("Predicted Eruption Duration (in Minutes):"),
                          textOutput("pred1")
                )
        )
))
