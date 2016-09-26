library(jsonlite)
# A JSON array of primitives
json <- '["Mario", "Peach", null, "Bowser"]'

# Simplifies into an atomic vector
fromJSON(json)

# No simplification:
fromJSON(json, simplifyVector = FALSE)

json <-
  '[
{"Name" : "Mario", "Age" : 32, "Occupation" : "Plumber"},
{"Name" : "Peach", "Age" : 21, "Occupation" : "Princess"},
{},
{"Name" : "Bowser", "Occupation" : "Koopa"}
]'
mydf <- fromJSON(json)
mydf
mydf$Ranking <- c(3, 1, 2, 4)
toJSON(mydf, pretty=TRUE)

json <- '[
  [1, 2, 3, 4],
[5, 6, 7, 8],
[9, 10, 11, 12]
]'
mymatrix <- fromJSON(json)
mymatrix
toJSON(mymatrix, pretty = TRUE)

json <- '[
   [[1, 2],
[3, 4]],
[[5, 6],
[7, 8]],
[[9, 10],
[11, 12]]
]'
myarray <- fromJSON(json)
myarray[1, , ]
myarray[ , ,1]
myarray
