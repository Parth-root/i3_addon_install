setwd("R Programming/Datasets/")
library(jsonlite)
jsondata <- fromJSON("contacts.txt")
class(jsondata)
names(jsondata)

#nested objects
jsondata$phoneNumber
class(jsondata$phoneNumber)
jsondata$phoneNumber$number

##converting data frames to 
mt_JSON <- toJSON(mtcars)
mtcars
mt_JSON

mt_DS <- fromJSON(mt_JSON)
mt_DS
m

##Exer
jsondata<- fromJSON("GB_category_id.json")
class(jsondata)
names(jsondata)

jsondata$kind
