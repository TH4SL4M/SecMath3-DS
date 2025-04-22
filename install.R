install.packages("remotes")
remotes::install_github("IRkernel/IRkernel")
remotes::install_github("coursekata/coursekata-r")
IRkernel::installspec(user = FALSE)  # ← This registers the R kernel with Jupyter
