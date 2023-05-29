library(XML)
filePath <- "R Programming/Datasets/foods.xml"
document <- xmlTreeParse(filePath,useInternalNodes = TRUE)

rootNode <- xmlRoot(document)
xmlName(rootNode)

names(rootNode)
class(rootNode)

rootNode[1]
rootNode[[1]]
#xml to dataframe
library(xml2)
# food_1st <- as_list(read)
food <- read_xml(filePath)
xml_root(food)
xml_length(food)
xml_children(food)

xml_child(food,search = 4)

obs <- xml_child(food,search = 4)
dbs <- xml_child(obs,"description")
xml_contents(dbs)
dbs
library(magrittr)
food %>%
  xml_child(search=4)%>%
  xml_child("description") %>%
  xml_contents()

food |> #%>% replaced
  xml_child(search=3)|>
  xml_child("price") |>
  xml_contents()

setwd("R Programming/Datasets/")
##writing to xml
library(MESS)
write.xml(mtcars,"mtcars.xml")

