library(dplyr)
library(tidyr)
library(ggplot2)
#읽어오기
data <- read.csv("C:\\work\\obzen\\edu_data\\Data\\wide_data.csv", dec=",")

#Data변환
newData<-gather(data, date, sales, -업종)
newData<-newData %>% group_by(업종) %>% mutate(date = seq(as.Date("2015/1/1"), by = "month",  length.out=12))

#그림그리기
ggplot(newData, aes(X=date, y=sales)) + geom_line() + geom_point() +
  facet_wrap( ~ 업종, ncol = 4 , scales = "free") +
  theme(axis.text.x = element_text(angle=45,hjust=1))
