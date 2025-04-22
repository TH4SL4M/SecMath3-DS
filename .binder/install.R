install.packages("IRkernel")
IRkernel::installspec(user = FALSE)

install.packages("remotes")
library(remotes)


# Then install coursekata
remotes::install_github("CourseKata/coursekata-r")
