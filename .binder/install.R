options(repos = c(CRAN = "https://packagemanager.posit.co/cran/2021-01-01"))

# Core packages for CourseKata environment
pkgs <- c(
  "IRkernel", "mosaic", "supernova", "Lock5withR", 
  "fivethirtyeight", "lsr", "repr", "remotes"
)

# Install from CRAN if not already installed
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

invisible(lapply(pkgs, install_if_missing))

# Install coursekata from a known-working commit (early 2022)
remotes::install_github("CourseKata/coursekata-r@7f9b1fc")

# Register IRkernel and set Deepnote-friendly plot defaults
IRkernel::installspec()
cat('options(repr.plot.width = 4, repr.plot.height = 4)\n', file = "~/.Rprofile", append = TRUE)
