#COV-19 DATA
library(lubridate)
data<-read.csv("https://raw.githubusercontent.com/gaoyifan99/COV-19-Project/master/national-history.csv",header=TRUE,sep=",",quote="")



#stock date
stock_ymd<-read.csv("https://raw.githubusercontent.com/gaoyifan99/COV-19-Project/master/GOOG.csv",header=TRUE,sep=",",quote="")


# Êý¾Ý¹ØÁª
library(dplyr)
covid_stock_join<-dplyr::left_join(data,stock_ymd,by="date")



