install.packages("IRkernel")
IRkernel::installspec(user = FALSE)

install.packages("remotes")
library(remotes)

# Install tidyverse tools first (coursekata depends on these)
install.packages(c("tidyverse", "dplyr"))

# Install coursekata next
remotes::install_github("CourseKata/coursekata-r")

# NOW force a newer ggplot2 version from GitHub (overwrites the CRAN one)
remotes::install_github("tidyverse/ggplot2")
