#' Google_API
#'
#' google_api is a function to find lat and lon code by inputing an address.
#'
#' @usage
#' google_api(address)
#'
#'
#' @examples
#' ggg<- google_api("address=1600+Amphitheatre+Parkway,+Mountain+View,+CA")
#' print(ggg)
#'
#'

library(httr)
library(jsonlite)

google_api <- function(address) {
  vec.que <- c(address,"&key=AIzaSyC-wifPMhCIGJnC5FPlDQDRX8HXVnao8Oo")
  query <- paste(vec.que,collapse = "")
  url <- modify_url("https://maps.googleapis.com/maps/api/geocode/json",query = query)
  resp <- GET(url)
#google_api("address=1600+Amphitheatre+Parkway,+Mountain+View,+CA")
  parsed <- fromJSON(content(resp, "text"), simplifyVector = FALSE)

  structure(
    list(
      content = parsed,
      address = address,
      query = query,
      response = resp
    ),
    class = "google_api_class"
  )
}

print.google_api_class <- function(x, ...) {
  cat("<GoogleMap", x$url, ">\n", sep = "")
  str(x$content)
  invisible(x)
}

ggg<- google_api("address=1600+Amphitheatre+Parkway,+Mountain+View,+CA")
print(ggg)

