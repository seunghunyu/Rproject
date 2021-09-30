# install.packages("tidyr")
library(tidyr)
library(DT)

data <- read.csv("C:\\work\\obzen\\edu_data\\data\\climate.csv");

str(data)

datatable(data)

# type과 temp는 key와 value에 해당하는 변수명
long_data <- gather(data, type, temp, -Source, -Year)
datatable(long_data)

long_data <- gather(data, type, temp, 3:6)
datatable(long_data)

# data이름, key, value
wide_data <- spread(long_data, type, temp)

datatable(wide_data)



# install.packages("dplyr")
library(dplyr)

datatable(data)

sub_data <- select(data, Source, Anomaly.1y:Anomaly.10y)
datatable(sub_data)

# ends_with, contains, matches 등의 함수도 있음 
sub_data <- select(data, Source, starts_with("Anomaly"))
datatable(sub_data)

summarise(sub_data, Mean5y = mean(Anomaly.5y))
summarise(sub_data, 
          Mean = mean(Anomaly.5y), 
          Min = min(Anomaly.5y), 
          Median = median(Anomaly.5y), 
          Max = max(Anomaly.5y), 
          SD = sd(Anomaly.5y), 
          Var = var(Anomaly.5y), 
          N = n())


sub_data %>% 
  group_by(Source) %>% 
  summarise(Mean1y = mean(Anomaly.1y), Mean5y = mean(Anomaly.5y))
