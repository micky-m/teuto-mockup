# teuto-mockup
First mockup to display sensor data using leaflet package. 

## Run the mockup

To run the mockup, first you need to build the Docker image. For this, change into the directory containing the file Dockerfile and execute `docker build -t teuto-mock .` Second, you need to run the container `docker run -d --rm -p 3838:3838 teuto-mock`

To access the locally running app open a web browser to http://localhost:3838

## Centre of the map

Centre of the map is **Eiserner Anton** which has the coordinates

latitude:   51.982295 
longitude:  8.571812 

## Mockup data

In the shiny app itself displayed data is coded directly. The code is copied to the folder data: In the code `data_generation.R` you find the copy of the code. Output is stored to the file mockup_data.csv. To Do: generate more realistic data outside the shiny app.