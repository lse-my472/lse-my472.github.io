# Using RStudio as parent image
FROM rocker/r-ver:4.3.0

ENV S6_VERSION=v2.1.0.2
ENV RSTUDIO_VERSION=2023.06.0+421
ENV DEFAULT_USER=rstudio

RUN /rocker_scripts/install_rstudio.sh
RUN /rocker_scripts/install_pandoc.sh
RUN /rocker_scripts/install_quarto.sh

# Setting the working directory to /app
WORKDIR /home/rstudio

RUN chown -R rstudio /home/rstudio

# Install required packages
RUN R -e "install.packages( \
    c('DBI', 'RSQLite', 'xml2', 'rvest', 'lubridate'), \
    dependencies=TRUE, \
    repos='http://cran.rstudio.com/')"

EXPOSE 8787

CMD ["/init"]
