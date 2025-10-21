Library(shiny)
Library(shinythemes)


#Define the UI
ui <- fluidPage(
  theme = shinytheme("sandstone"),  # only set here
  navbarPage( "Trial App for Biographic Data Collection", 
             # Navbar 1
             tabPanel(
               "Navigation_bar 1",
               sidebarPanel(
                 tags$h3("Input:"),
                 textInput("txt1", "Given Name:", ""),
                 textInput("txt2", "Surname:", "")
                 ),
               mainPanel(
                 h1("Header 1"),
                 h3("Output 1"),
                 verbatimTextOutput("txtout")
                 )
               ),
             
             # Navbar 2
             tabPanel(
               "Navigation_bar 2",
               sidebarPanel(
                 tags$h2("Input:"),
                 textInput("text1","Age:",""),
                 textInput("text2","Gender:","")
                 ),
               mainPanel(
                 h1("Biographic details"),
                 h3("Your details"),
                 uiOutput("dynamicText")
                 )
               ),
             # Navbar 3
             tabPanel(
               "Navigation_bar 3",
               h1("Complete Details"),
               verbatimTextOutput("combinedText")
               )
             ) # navbarPage
  ) # fluidPage


#Define the server function
server <- function(input, output) {
  output$txtout <- renderText({
    paste(input$txt1, input$txt2, sep = " ")
    })
  output$dynamicText  <- renderText({
    paste("Your age is: ", input$text1, " Your gender is: ", input$text2, sep = " " )
    })
  output$combinedText <- renderText({
    paste(
      " Given Name: ", input$txt1, "\n",
      "Last Name: ", input$txt2, "\n",
      "Age: ", input$text1, "\n",
      "Gender: ", input$text2)
    })
  }


#Create the Shiny object
shinyApp(ui = ui, server = server)


runApp('C:/Users/apurv/Desktop/Stevens Material/Rshiny/Building a Biographic Details data collection app.R')
git init
git
install git
