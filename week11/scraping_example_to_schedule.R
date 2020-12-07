
##
## Continuous scraping: Approach 2
##

# This script runs a single iteration, however, can be scheduled with tools
# such as cron

# Loading packages
library_directory <- "/home/ec2-user/r_libraries/"
.libPaths(library_directory)
library("DBI")
library("rvest")
library("lubridate")

# Setting/creating output directory
output_folder <- "/home/ec2-user/output"
if (!file.exists(output_folder)){dir.create(output_folder)}
setwd("/home/ec2-user/output")

# Connecting to/creating SQLite database
db <- dbConnect(RSQLite::SQLite(), "wikipedia.sqlite")

# If no .csv file exists, create one
if (file.exists("featured_articles.csv") == FALSE)
  {writeLines(c("date, summary, link"), "featured_articles.csv")}

# Creating a data frame with one row
df <- data.frame(date = as_datetime(Sys.time()), summary = NA, link = NA)

# Reading the HTML code
wikipedia_main_page <- read_html("https://en.wikipedia.org/wiki/Main_Page")

# Article summary
df[1,"summary"]  <- wikipedia_main_page %>%
  html_nodes(css = "#mp-tfa > p") %>%
  html_text()

# Link to full article
all_links <- wikipedia_main_page %>% html_nodes(css = "a")
tfa_partial_link <- all_links[grepl("Full", all_links) & grepl("article", all_links)] %>%
  html_attr("href")
df[1,"link"] <- paste0("https://en.wikipedia.org", tfa_partial_link) 

# Now the df is either appended to the table within the database or to the csv file

# Option i: Add to table in SQL datase
dbWriteTable(db, "featured_articles", df, append = TRUE)

# Option ii: Append as row to csv
write.table(df, file="featured_articles.csv", 
            append = TRUE,
            row.names = FALSE,
            col.names = FALSE,
            sep=',')

# Status update
print(paste("Article scraped at", Sys.time()))

# Disconnect from the database
dbDisconnect(db)





