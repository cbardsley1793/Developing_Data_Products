library(shiny)

shinyUI(fluidPage(
        titlePanel("Old Faithful Geyser Eruption Duration Prediction App"),
        sidebarLayout(
                sidebarPanel(
                        sliderInput("sliderWT", "Move the slider to select a wait time (in mins) for next Old Faithful geyser eruption", 50, 100, value = 75)
                        # h4("Predicted Eruption Duration (in Minutes):"),
                        # textOutput("pred1")
                ),
                mainPanel(plotOutput("plot1"),
                          h4("The predicted eruption duration (in mins) based on the wait time selected is:"),
                          textOutput("pred1")
                )
        )
))
