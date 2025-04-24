install.packages("IRkernel")
install.packages("devtools")
IRkernel::installspec(user = FALSE)

# Install compatible version of ggplot2 (3.4.0 or later)
install.packages("ggplot2", repos = "https://cloud.r-project.org", dependencies = TRUE)

# THEN install coursekata
devtools::install_github("CourseKata/coursekata-r")
