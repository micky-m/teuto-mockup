# Docker Image
FROM rocker/shiny:4.1.1

# system libraries 
RUN apt-get update && apt-get install -y \
    libcurl4-gnutls-dev \
    libssl-dev
  

# install R packages required 
# do not take the whole tidyverse, only needed packages
RUN R -e 'install.packages("shiny")'
RUN R -e 'install.packages("leaflet")'
#RUN R -e 'install.packages("tidyverse")'
RUN R -e 'install.packages("magrittr")'
RUN R -e 'install.packages("tibble")'
RUN R -e 'install.packages("leaflet.extras")'


# copy app directory into the Image
COPY /app ./app

# run app
CMD ["R", "-e", "shiny::runApp('app', host = '0.0.0.0', port = 3838)"]