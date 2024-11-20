# MY472: Data for Data Scientists
# London School of Economics and Political Science
# Autumn Term 2024

# This script provides some sample code for using the Google Maps Geocoding API
# See documentation for detail and set up instructions: https://developers.google.com/maps/documentation/geocoding
# WARNING: the Google Maps API may charge you if you use it too much! Beware!

library(keyring)

# f you have not stored your google maps api key, run the following line and paste in your API key when prompted!
# key_set("google-maps-api-key")

# the url for making Google Maps Geocoding API calls and returning in JSON format
url <- "https://maps.googleapis.com/maps/api/geocode/json"

# method 1 for making the request
library(jsonlite)

## construct an endpoint url that includes for the relevant parameters
houghton_search <- paste0(url, "?", "address=Houghton Street London WC2A2AE", "&key=", key_get("google-maps-api-key"))
houghton_search <- str_replace_all(houghton_search, " ", "%20")

## make the request
z <- fromJSON(houghton_search)

## check the request was successful
print(z$status) # OK means request was successful!

## get some data from the result
z$results$formatted_address
z$results$geometry$location$lat
z$results$geometry$location$lng

# method 2 for making the request
library(httr)

## use GET to construct URL that makes the request
r <- GET(url, query=list(address="Houghton Street London WC2A2AE", key=key_get("google-maps-api-key")))

## check the request was successful
print(r$status_code) # 200 means request was successful!

## extract the content
r_content <- content(r, as="parsed")

## how many results? 
length(r_content$results)

## get some data from the first result
r_content$results[[1]]$formatted_address
r_content$results[[1]]$geometry$location$lat
r_content$results[[1]]$geometry$location$lng