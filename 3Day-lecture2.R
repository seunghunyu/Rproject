# 4.Array and matrics 

#4.1 Arrays 
z<-1:30
dim(z) <- c(6,5)
z

dim<-c(2,5,3)
z

#.2 Array Undexing Subsections of an array 
z<-1:25
dim(z) <-c(5,5)
z 

z[2,3]
z[2,]
z[,1]

z[,c(2:3)]
z[,2:3]


#4.3 Index matrices 

x <- array(1:20, dim = c(4,5))
x

i <- array(c(1:3 , 3:1), dim = c(3,2))
i

x[i]

x[i] <- 0
x

xx<-1:6
matrix(xx, ncol=2)
matrix(xx, nrow=3)

m<-matrix(xx, ncol=2,byrow= T )
m

dim(m)
#ㅍvector 에는 dim 을 사용 못함 length()를써야한다 matrix 에서 length 는 모든 요소의 갯수 
length(m)

v <- 1:6
dim(v)
v
length(V)

#5.Listst and data frames 


Lst<-list(name = "Fred",
          wife = "Mary",
          no.childeren =3 ,
          childe.ages =c(4,7,9))

Lst


Lst$wife

Lst[2]

class(Lst[2])
Lst[[2]]

class(Lst[[2]])

Lst[[3]][2]

Lst[4]



