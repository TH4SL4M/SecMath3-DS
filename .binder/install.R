install.packages("IRkernel")
IRkernel::installspec(user = FALSE)

install.packages("remotes")
library(remotes)

# install a modern ggplot2 version from GitHub first
remotes::install_github("tidyverse/ggplot2")

# Now install the coursekata package
remotes::install_github("CourseKata/coursekata-r")

# other packages you need
install.packages(c("tidyverse", "dplyr"))
