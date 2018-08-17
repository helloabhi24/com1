library(plotly)
library(shiny)
library(shinydashboard)
shinyUI(
  dashboardPage(skin="purple",
    dashboardHeader(title = h2(strong("PREDICTING ACADEMIC TRENDS AND PATTERNS IN EDUCATIONAL DATABASE"),align="center"),titleWidth = 1300) ,
    dashboardSidebar(
      sidebarMenu(
        menuItem("2013",tabName = "about",
                 menuSubItem("2013",tabName = "2013"),
                 menuSubItem("2013 IInd Sem",tabName = "20133"),
                 menuSubItem("2013 year",tabName = "201333")),
        menuItem("2014",tabName = "Data",
                 menuSubItem("2014",tabName = "2014"),
                 menuSubItem("2014 IInd Sem",tabName = "20144"),
                 menuSubItem("2014 year",tabName = "201444")),
        menuItem("Chart",tabName = "box",icon=icon("line-chart"))
      )
    ) ,
    dashboardBody(
      tabItems(
        tabItem(
          tabName = "2013",plotlyOutput("plot3") ),
        tabItem(
          tabName = "20133",plotlyOutput("plot5") ),
        tabItem(
          tabName = "201333",plotlyOutput("plot7") ),
        
        tabItem(
          tabName = "2014",plotlyOutput("plot4") ),
        tabItem(
          tabName = "20144",plotlyOutput("plot6") ),
        tabItem(
          tabName = "201444",plotlyOutput("plot8") ),
        tabItem(tabName = "box" ,
                fluidRow(valueBoxOutput("max1",width = 3),valueBoxOutput("min1",width = 3),valueBoxOutput("mean1",width = 4) ),
                fluidRow(box(title = "Mean MEdian MOde",selectInput("sel","Select One",choices = colnames(IInd[,c(5:23,25:27,29:53)]))
                             
                             ,
                             plotlyOutput("plot1"),status = "danger",solidHeader = T,collapsible = T),
                         box(title = "Line",selectInput("s","NO Touch",choices = colnames(IInd[,3]) ),plotlyOutput("plot2"),status = "success",solidHeader = T,collapsible = T))
        )
      )
    )
  )
)
