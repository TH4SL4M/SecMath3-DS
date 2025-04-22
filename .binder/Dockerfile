FROM gcr.io/deepnote-200602/templates/deepnote

# Install R 4.0.3
RUN echo "deb http://cloud.r-project.org/bin/linux/debian buster-cran40/" | tee -a /etc/apt/sources.list && \
    apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF' && \
    apt update && \
    apt install -y -t buster-cran40 r-base

# Install required R packages
COPY .binder/install.R /tmp/install.R
RUN Rscript /tmp/install.R

# Register IRkernel system-wide
RUN R -e "IRkernel::installspec(user = FALSE)"

# Optional: set plot size defaults
RUN echo 'options(repr.plot.width = 4, repr.plot.height = 4)' >> /etc/R/Rprofile.site
