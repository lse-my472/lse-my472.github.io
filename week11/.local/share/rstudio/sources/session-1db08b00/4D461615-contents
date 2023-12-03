
##
## Helper script to install R packages
##

# List of packages to install (adjust if you would like to install other packages)
required_packages = c("DBI", "RSQLite", "xml2", "rvest", "lubridate")

# Create folder for libraries if it does not exist and set library path
library_directory <- "/home/ec2-user/r_libraries/" # can be adjusted
if (!file.exists(library_directory)){dir.create(library_directory)}
.libPaths(library_directory)

# Installing packages
for (pp in required_packages) {
  
  if (!pp %in% installed.packages())
    
    install.packages(pp, dependencies = TRUE, repos = "http://cran.r-project.org")

  library(pp, character.only = TRUE)
  
}