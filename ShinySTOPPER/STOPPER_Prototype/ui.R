#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("STOPPER"),
  
  navbarPage("STOPPER",
             tabPanel("Data Entry",
                      fluidRow(
                        column(6,
                               h3("Upload Data"),
                               wellPanel(fileInput("file1", "Crime Data",
                                                   multiple = TRUE,
                                                   accept = c("text/csv",
                                                              "text/comma-separated-values,text/plain",
                                                              ".csv")),
                                         fileInput("file1", "Police Presence",
                                                   multiple = TRUE,
                                                   accept = c("text/csv",
                                                              "text/comma-separated-values,text/plain",
                                                              ".csv")),
                                         fileInput("file1", "Explanatory Variables",
                                                   multiple = TRUE,
                                                   accept = c("text/csv",
                                                              "text/comma-separated-values,text/plain",
                                                              ".csv")))
                        ),
                        column(6
                               ,
                               h3("Run Analyses"),
                               wellPanel(
                                 
                                 tags$head(tags$script(src = "message-handler.js")),
                                 actionButton("do", "Temporal", style='padding:8px; font-size:200%', width = 48*8),
                                 
                                 tags$head(tags$script(src = "message-handler.js")),
                                 actionButton("do", "Spatial", style='padding:8px; font-size:200%', width = 48*8),
                                 
                                 tags$head(tags$script(src = "message-handler.js")),
                                 actionButton("do", "Spatio-Temporal", style='padding:8px; font-size:200%', width = 48*8),
                                 
                                 tags$head(tags$script(src = "message-handler.js")),
                                 actionButton("do", "Multivariate", style='padding:8px; font-size:200%', width = 48*8)
                                 
                               )
                        )
                      )
                      ),
             navbarMenu("Results",
                        tabPanel("Temporal",
                                 imageOutput("dlmts")),
                        tabPanel("Spatial",
                                 imageOutput("heatmap")),
                        tabPanel("Spatio-Temporal"),
                        tabPanel("Multivariate"))
             )
  )
)
