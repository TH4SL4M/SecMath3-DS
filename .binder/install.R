install.packages("remotes")

# Force upgrade of rlang first
remotes::install_cran("rlang", upgrade = "always")

# Then install gtable & ggplot2 from GitHub
remotes::install_github("r-lib/gtable@v0.3.4")
remotes::install_github("tidyverse/ggplot2@v3.4.4")

# Install IRkernel
install.packages("IRkernel")
IRkernel::installspec(user = FALSE)

# Now install tidyverse without downgrading ggplot2
install.packages("tidyverse")

# Then finally install coursekata
remotes::install_github("CourseKata/coursekata-r")
