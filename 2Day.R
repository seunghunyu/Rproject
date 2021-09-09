 library("leaflet")
 Comment1 = "
m <- leaflet() 
  addTiles() 
  addMarkers(lng=174.768, lat = 36.852)
m # print the map




leaflet() %>%
setView(lng=126.9784, lat=37.566, zoom=11) %>%!
addTiles() 

" 


# calculator
1+2*(3+4)
 
log(43+32+1)

((4+3)*(2+1))^0.5









library(tidyr)
library(dplyr)
library(ggplot2)

# Data 읽어오기
#data <- read.csv("Data/wide_data.csv", dec = ",")
data <- read.csv("C:\\work\\obzen\\edu_data\\Data\\wide_data.csv", dec=",")
# Data 변환
newData <- gather(data, date, sales, -업종) 
newData <- newData %>% group_by(업종) %>% 
  mutate(date = seq(as.Date("2015/1/1"), by = "month",
                    length.out = 12))

# 그림 그리기

ggplot(newData, aes(x=date, y=sales)) + 
  geom_line() + geom_point() + 
  facet_wrap( ~ 업종, ncol = 4, scales = "free") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



# Load package (팩키지 설치, 연결)
# install.packages("networkD3")

library(networkD3)

# Load data (데이터 읽어오기)
data(MisLinks)
data(MisNodes)

# Plot (그림 그리기)
forceNetwork(Links = MisLinks, Nodes = MisNodes,
             Source = "source", Target = "target",
             Value = "value", NodeID = "name",
             Group = "group", opacity = 0.8)

# Load data (데이터 읽어오기)
MyLinks <- read.csv("C:\\work\\obzen\\edu_data\\Data\\MyLinks.csv", dec=",")
MyNodes <- read.csv("C:\\work\\obzen\\edu_data\\Data\\MyNodes.csv", dec=",")

# Plot (그림 그리기)
forceNetwork(Links = MyLinks, Nodes = MyNodes,
             Source = "source", Target = "target",
             Value = "value", NodeID = "name",
             Group = "group", opacity = 0.8)




# Load package (팩키지 설치, 불러오기)
# install.packages("leaflet")

library(leaflet) 


m <- leaflet() %>% 
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R") 
m # Print the map


m <- leaflet() %>% 
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=126.978, lat=37.566, popup="The City Hall of Seoul") 
m # Print the map











































