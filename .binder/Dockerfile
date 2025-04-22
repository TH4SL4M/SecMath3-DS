FROM r-base:4.0.3

# Install system dependencies for Jupyter and IRkernel
RUN apt-get update && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libgit2-dev \
    curl \
    wget \
    fonts-dejavu \
    && rm -rf /var/lib/apt/lists/*

# Install IRkernel + other packages
COPY .binder/install.R /tmp/install.R
RUN Rscript /tmp/install.R

# Register IRkernel system-wide
RUN R -e "IRkernel::installspec(user = FALSE)"

# Default plot size
RUN echo 'options(repr.plot.width = 4, repr.plot.height = 4)' >> /usr/local/lib/R/etc/Rprofile.site
