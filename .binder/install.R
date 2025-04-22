options(repos = c(CRAN = "https://cran.r-project.org"))

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

# Install CourseKata using known good commit (can be updated later)
remotes::install_github("CourseKata/coursekata-r@7f9b1fc")
