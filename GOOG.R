#COV-19 DATA
library(lubridate)
data<-read.csv("https://raw.githubusercontent.com/gaoyifan99/COV-19-Project/master/national-history.csv",header=TRUE,sep=",",quote="")
data$date<-lubridate::ymd(data$date) 


#stock date
stock_ymd<-read.csv("https://raw.githubusercontent.com/gaoyifan99/COV-19-Project/master/GOOG.csv",header=TRUE,sep=",",quote="")
stock_ymd$date<-lubridate::ymd(stock_ymd$date)

# 数据关联
library(dplyr)
covid_stock_join<-dplyr::left_join(data,stock_ymd,by="date")



