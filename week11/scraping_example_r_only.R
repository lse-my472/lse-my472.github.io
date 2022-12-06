
##
## Continuous scraping: Approach 1
##

# This script illustrates continuous scraping with a cloud instance by
# collecting the Wikipedia featured article of the day once every 24h interval.
#
# The example is helpful for us to discuss a simple case of continous scraping,
# however, note that the code would require the computer to run continously.
# That could be suitable e.g. when scraping in minute intervals, or when
# downloading tweets continuoulsy using the Twitter streaming API. When just
# collecting data once per day like here, it would of course be most energy and
# cost efficient to only briefly spin up and shut down a cloud instance every
# day or to use FaaS, and to store the collected data outside of the instance,
# e.g. via S3 or Dropbox.

# The script illustrates two ways in which the scraped data can be saved:

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
    df <- tibble(date = as_datetime(Sys.time()), summary = "", link = "")
    
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
read_csv("featured_articles.csv") %>% as_tibble()

# Disconnect from database
dbDisconnect(db)




