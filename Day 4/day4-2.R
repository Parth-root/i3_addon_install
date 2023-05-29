#ploting
a<- c(23,56,89,100,34)
barplot(a)
setwd("R Programming/Datasets/")
cars93<-read.csv("Cars93.csv")
table(cars93$Type)
table(cars93$Price.Category)
barplot(table(cars93$Price.Category))
barplot(table(cars93$Type),
        main="Types of Cars",
        col="salmon3")
colors()
hist(cars93$Price) #only for numeric data

plot(cars93$Price)

library(ggplot2)
library(dplyr)
sum_cars <- cars93%>%
  group_by(AirBags)%>%
  summarise(avg_Price=mean(Price,na.rm = T))

ggplot(data = sum_cars,
       aes(x=AirBags,y=avg_Price,fill=AirBags))+geom_bar(stat = "identity")

                                                         