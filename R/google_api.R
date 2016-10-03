#' Google_API
#'
#' google_api is a function to find lat, lon codes and detail address by inputing an address.
#'
#' @usage
#' google_api(address)
#'
#'
#' @examples
#' google_api("Eiffel+Tower,Paris")
#' google_api("Summer+Palace,Beijing")
#'
#' @import httr
#' @import jsonlite
#'
#' @export
### not generate Rd files and NAMESPACE
### Without setting roxygen2

google_api <- function(address) {
   vec.que <- c("address=",address,"&key=AIzaSyC-wifPMhCIGJnC5FPlDQDRX8HXVnao8Oo")
   query <- paste(vec.que,collapse = "")
   url <- modify_url("https://maps.googleapis.com/maps/api/geocode/json",query = query)
   resp <- GET(url)
   parsed <- fromJSON(content(resp, "text"), simplifyVector = FALSE)

    list(
      latitude = parsed$results[[1]]$geometry$location$lat,
      longitude =parsed$results[[1]]$geometry$location$lng,
      address = parsed$results[[1]]$formatted_address,
      url = url
    )
}


