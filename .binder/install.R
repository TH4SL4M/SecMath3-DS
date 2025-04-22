install.packages("remotes")
remotes::install_github("r-lib/gtable@v0.3.4")  # Needed for ggplot2 >= 3.4
remotes::install_github("tidyverse/ggplot2@v3.4.4")  # latest safe version for R 4.2.1

install.packages("IRkernel")
IRkernel::installspec(user = FALSE)

# Install tidyverse AFTER ggplot2 so it doesn't downgrade ggplot2
install.packages("tidyverse")

# Finally install CourseKata
remotes::install_github("CourseKata/coursekata-r")
