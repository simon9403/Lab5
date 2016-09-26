devtools::use_vignette("my-vignette")

library(httr)
google_api <- function(address) {
  vec.que <- c(address,"&key=AIzaSyC-wifPMhCIGJnC5FPlDQDRX8HXVnao8Oo")
  query <- paste(query,collapse = "")
  url <- modify_url("https://maps.googleapis.com/maps/api/geocode/json",query = query)
  GET(url)
}

resp <- google_api("address=1600+Amphitheatre+Parkway,+Mountain+View,+CA")
http_type(resp)
