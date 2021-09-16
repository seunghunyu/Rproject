# c -> Combine의 약자   
x<-c(1,2,3,4,5)
x

x[2]

x[1:3]
1:3
20:30

#R은 기본적으로 vector oriented 계산을 함 
1/x

#c() 는 벡터를 연결해주는 역할도 한다.
y <- c(x,0,x)
y

x<-c(1,1,1,1)
# 상수는 모든요소에 더해진다. 
x+1

y<-c(1,2,3,1,1)
# (1,2,3,4,5) + (1,2,3,1,1) 
x+y 



#-2 에서  2 까지 0.3rksrurdmfh 
seq(-2,2, by = 0.4)

#-5 부터 5개를 만드는데 0.2rksrurdmfh 
seq(length = 5,from = -5, by = .2)

x<-c(1,2,3)
#벡터 자체를 반복 
rep(x, times = 5)

#벡터의 각 요소를 반복 
rep(x,each = 5)


x<-seq(1,5)
x

x > 3 

#TRUE/FALSE 는 대문자로 써야한다 T/F 도 가능 
a<-true  # error 

a < -TRUE

a

#TRUE 는 1 FALSE 는 0으로 계산됨

sum(x>3)


#### Mssing Values 
z<-c(1:3, NA);
z

ind <- is.na(z)
ind

1/0

Inf - Inf

foo <- c("s","a","m","s","u","n","g")
foo

# 문자와 숫자가 섞이면 자동으로  숫자가 문자로 변환됨 
c("s","a","m","s","u","n","g","1")

#함수 paste 는 argument들을 적절히 연결하여 charater vector 를 구성하도록 함 
paste("X","Y")

paste("X","Y" , sep="")

#연결자 없이 바로연결 
paste0("X","Y")

#벡터화하여반복해서 더 긴쪽에 맞추어 가각을 연결해준다.
labs <- paste(c("X","Y"), 1:10 ,sep="")
labs


#Index Vectors
 
x <- c(1,2,3,NA,5,6,7,NA,9,10)
x

is.na(x)

!is.na(x)

#NA 가 아닌 요소만을 뽑아낸다.
x[!is.na(x)]

#NA 가 아니면서 3보다 큰 요소만을 뽑아낸다.
x[(!is.na(x)) & x>3]

# c로 요소의 set을 연결해야하는 것에주의 
x[c(1,3,5)]

#반복해서 추출할수도있음
xx<-c("x","y")
xx

#xx에서 첫번째 두번재 두번째 첫번쨰 요소를 
xx[c(1,2,2,1)]

rep(c(1,2,2,1), times = 2)


x

x[-(1:5)]

fruit <- c(5,10,1,20)
names(fruit)

names(fruit) <- c("orange","banana","apple","peach");

fruit

lunch <- fruit[c("apple","orange")]

lunch

is.numeric(z)

is.character(z)

digits <- as.character(z)

digits

d<-as.integer(digits)
d

dd<-c("a","1")
as.integer(dd)


e<-numeric
e

e<-numeric(2)
e

