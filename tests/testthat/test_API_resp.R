library(Lab5)
library(httr)
context("API response")

test_that("API returned json", {
  expect_equal(http_type(google_api("1600+Amphitheatre+Parkway,+Mountain+View,+CA")), "application/json")
  expect_equal(class(google_api("1600+Amphitheatre+Parkway,+Mountain+View,+CA")),"google_api_class")
  expect_equal((google_api("1600+Amphitheatre+Parkway,+Mountain+View,+CA"))$response$status_code ,200)
  })
