library(Lab5)
library(httr)
context("API response")

test_that("function is correct to response the input calling", {
  resp <- google_api("address=1600+Amphitheatre+Parkway,+Mountain+View,+CA")
  expect_output(http_type(resp), "application/json")
})
