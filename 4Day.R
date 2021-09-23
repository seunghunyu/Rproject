#Data를 처음 접하면 봐야할 것들 
str(iris) 

library(DT)
datatable(iris)

library(ggplot2)

ggplot(data = iris,
       aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()

#데이터셋과 변수만을 정의하는 부분
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
# 포인트를 표시 
myplot+geom_point()

#종류별 색상설정 
ggplot(iris, 
       aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size = 3)

#투명도 설정 
ggplot(iris,
       aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size=7,alpha=0.5)




ggplot(iris,
       aes(Sepal.Length, Sepal.Width, color = Species, shape = Species)) + geom_point(size=3)



library(MASS)
#birth weight in grams 
str(birthwt)

ggplot(birthwt,
       aes(factor(race),bwt)) + geom_boxplot()


getwd() 

climate <- read.csv("C:\\work\\obzen\\edu_data\\Data\\climate.csv", header = T)
str(climate)

ggplot(climate, aes(Year, Anomaly.10y)) + geom_line()


head(faithful)
ggplot(faithful, aes(waiting)) + geom_density()

ggplot(faithful, aes(waiting)) + geom_density(fill= "blue",alpha=0.1)


ggplot(faithful, aes(waiting)) + geom_line(stat = "density")

iris$new_group <- as.factor(sample(1:3, 150, replace = T))
head(iris)

p.tmp <- ggplot(iris, aes(Petal.Length, Petal.Width))+geom_point()

p.tmp + facet_wrap( ~ Species)

p.tmp + facet_wrap( ~ Species, nrow = 3)

p.tmp + facet_grid(new_group ~ Species)

p.tmp + facet_wrap(~ Species, scales = "free")

p.tmp + facet_wrap( ~ Species, scales = "free_x")

p.tmp + facet_wrap( ~ Species, scales = "fixed")

library(car)
scatterplotMatrix( ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width,
                   data = iris,
                   main = "ScatterPlot Matices : iris data")

scatterplotMatrix( ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width | Species,
                   data = iris,
                   main = "ScatterPlot Matices : iris data")





