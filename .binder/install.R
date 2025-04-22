install.packages("IRkernel")
IRkernel::installspec(user = FALSE)

install.packages("remotes")
library(remotes)  # <-- add this line to ensure it's available


install.packages(c("tidyverse", "ggplot2", "dplyr"))
install_github("CourseKata/coursekata-r")
