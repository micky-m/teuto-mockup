#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

##############
## PRELIMINARIES
##############

## Packages
library(shiny)
library(leaflet)
#library(tidyverse)
library(magrittr)
library(tibble)
library(leaflet.extras)

## centre of the map
#eiserner anton
lat_centre <- 51.982295 
long_centre <- 8.571812  

## data mockup
#mockup data
mydata <- tibble(long=c(8.530699, 8.547007, 8.564345, 8.579880, 8.574044),
                 lat=c(51.987898, 51.977114, 51.979863, 51.976004, 51.973043), 
                 intensity=c(1,2,3,4,5))

##############
## APP
##############

# Define UI for application 
ui <- fluidPage(

    # Application title
    titlePanel("Sichtbarmachung Bodenfeuchtigkeit Teutoburger Wald"),
    
    # Leaflet
    leafletOutput("mymap")
    
)

# Define server logic required to draw a histogram
server <- function(input, output,session) {
    

    output$mymap <- renderLeaflet({
        leaflet() %>%
            addProviderTiles(providers$OpenStreetMap.DE) %>%
            setView(long_centre, lat_centre, 13) %>%
            addHeatmap(lng=~long, lat=~lat, intensity=~intensity, 
                       max = 5, radius = 35, data=mydata)
    })
}

##############
## RUN APP
##############
shinyApp(ui = ui, server = server)
