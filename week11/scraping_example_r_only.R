
##
## Continuous scraping: Approach 1
##


# This file regularly scrapes the Wikipedia featured article of the day and
# stores new data in two ways:

# i) by appending it to a table in an SQLite database
# ii) by appending it to a .csv file

# Loading packages
library("RSQLite")
library("DBI")
library("rvest")
library("lubridate")
library("tidyverse")


# Connecting to/creating SQLite database
db <- dbConnect(RSQLite::SQLite(), "wikipedia.sqlite")

# If no .csv file exists, creating one with the header
if (file.exists("featured_articles.csv") == FALSE)
{writeLines(c("date, summary, link"), "featured_articles.csv")}

# Scraping around the following hours 0 - 23
target_hours <- c(9) # check system time zone with Sys.time()

# Target items
n <- 10000

# While loop
i <- 0
while(i < n) {
  
  # Sleep for one hour
  Sys.sleep(60 * 60)
  
  # Check whether current hour is in target hours
  if (hour(Sys.time()) %in% target_hours) {
    
    # Creating a data frame with one row
    df <- data.frame(date = as_datetime(Sys.time()), summary = NA, link = NA)
    
    # Reading the HTML code
    wikipedia_main_page <- read_html("https://en.wikipedia.org/wiki/Main_Page")
    
    # Article summary
    df[1,"summary"]  <- wikipedia_main_page %>% html_nodes(css = "#mp-tfa > p") %>% html_text()
    
    # Link to full article
    all_links <- wikipedia_main_page %>% html_nodes(css = "a")
    tfa_partial_link <- all_links[grepl("Full", all_links) & grepl("article", all_links)] %>%
      html_attr("href")
    df[1,"link"] <- paste0("https://en.wikipedia.org", tfa_partial_link) 
    
    # Now the df is either appended to the table within the database or the a
    # csv file
    
    # Option i: Add to table in SQL datase
    dbWriteTable(db, "featured_articles", df, append = TRUE)
    
    # Option ii: Append as row to csv
    write.table(df, file="featured_articles.csv", 
                append = TRUE,
                row.names = FALSE,
                col.names = FALSE,
                sep=',')
    
    # Can also create a backup of the csv every 5 days, e.g. with
    if (i %% 5 == 0) {file.copy("featured_articles.csv", "featured_articles_backup.csv")}
    
    # Increment item count
    i <- i + 1
    
    # Status update
    print(paste("Article scraped at", Sys.time()))
    
  }
  
  
}


# Check the database
dbGetQuery(db, 'SELECT * FROM featured_articles') %>% as_tibble()

# Check the csv
read.csv("featured_articles.csv") %>% as_tibble()

# Disconnect from database
dbDisconnect(db)




