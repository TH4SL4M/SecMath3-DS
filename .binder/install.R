options(repos = c(CRAN = "https://packagemanager.posit.co/cran/2021-01-01"))

pkgs <- c(
  "IRkernel", "mosaic", "supernova", "Lock5withR", 
  "fivethirtyeight", "lsr", "repr", "remotes"
)

install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

invisible(lapply(pkgs, install_if_missing))

# Install coursekata from an older version that works with R 4.0.3
remotes::install_github("CourseKata/coursekata-r@7f9b1fc")
