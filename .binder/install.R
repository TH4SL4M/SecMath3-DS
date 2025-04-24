install.packages("IRkernel")
install.packages("devtools")  # Needed to install GitHub packages

IRkernel::installspec(user = FALSE)

devtools::install_github("CourseKata/coursekata-r")
