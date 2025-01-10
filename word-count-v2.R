library(tidyverse)

rmd_file <- "tba" # path to your Rmd file

read_file(rmd_file) %>% # read the file as a text file
  str_squish() %>% # remove all extra white space
  str_replace("^.+?output.+?[-]{3}", "") %>% # remove header
  str_replace_all("``` *[{].+?```", " ") %>% # remove code chunks
  str_replace_all("<![-].+?-->", " ") %>% # remove rmd comments
  str_replace_all("[!]?\\[.+?\\][(].+?[)]", " ") %>% # remove links
  str_replace_all("(^|\\s+)[^A-Za-z0-9]+", " ") %>% # remove symbols (1)
  str_replace_all("[^A-Za-z0-9]+($|\\s+)", " ") %>% # remove symbols (2)
  str_count("\\S+") %>% 
  paste("The document is", ., "words.") %>%
  print()