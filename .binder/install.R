install.packages("IRkernel")
IRkernel::installspec(user = FALSE)

install.packages("remotes")
library(remotes)

# Install everything else (dependencies, CourseKata)
install.packages(c("tidyverse", "dplyr"))
remotes::install_github("CourseKata/coursekata-r")

# NOW install the required gtable version before ggplot2
remotes::install_version("gtable", version = "0.3.6")

# Then install latest ggplot2 from GitHub
remotes::install_github("tidyverse/ggplot2")
