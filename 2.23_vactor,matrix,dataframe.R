2020/02/23 통계학개론 1강

height <- c(165, 151, 162, 160, 151, 152, 159, 163, 143, 161)
d<-1:3
e<-seq(1, 9, 2)
f<-rep(10, 5)
g<-c(d, f)
h<-c(4:1, seq(0, 9, 3))

d
e
f
g
h


# 숫자형 데이터와 범주형 데이터
i = 1:4 # 기본 숫자형 데이터가 만들어진다.
i
j = as.factor((1:4)) # 1,2,3,4라는 이름의 범주로 만들어진다.
j

i+1
j+1 # 범주형 데이터는 연산이 불가능하다.



# 문자형 백터 만들기
k = as.character(1:4)
k # 숫자를 넣었지만 문자형 벡터로 만들어졌다.

l = c("k","n","o","u")
l


# 논리형 데이터 살펴보기
m = i > 2
m



# 행렬
n = rep(10, 5)
o = 1:5
p = cbind(n, o) # col 기준으로 합체
q = rbind(n, o) # row 기준으로 합체
r = matrix(1:4,2 ,2) # matrix함수로 행렬 생성 가능
s = matrix(c(1, 4, 2, 7), 2, 2)

# matrix r과 s는 차원이 같기 때문에 연산 가능하다.
r
s
r + s
r * s
r %*% s

solve(s) # 역행렬
s[1,2] # 행 위치에 있는 값을 반환
s[1, ]
s[, 1]






# data.frame

name<-c("Kim", "Lee", "Park", "Choi")
age<-c(20, 32, 17, 51)
sex<-as.factor(c("Male", "Female", "Female", "Female"))
dat<-data.frame(name, age, sex)
dat$age
dat$name
dat$sex
dat
