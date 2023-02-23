2020/02/23 데이터정보처리입문 12강 


# csv파일은 패키지 다운로드없이 바로 가능하다.
s = read.table("C:/Users/PC/Desktop/test.txt")

head(s, 3) # 앞 3개
tail(s, 3) # 마지막 3개
names(s)
mean(s$salary)


# xlsx파일은 install.packages("readxl") 패키지 다운로드
install.packages("readxl")
library("readxl")
a = read_excel("C:/Users/PC/Desktop/xo0ol_R/IspublicR/data1.xlsx")
head(a)
summary(a)

# tapply : 그룹화
tapply(a$salary, a$sex, mean)


test1 = list(a$edu, a$sex)
tapply(a$salary, test1, mean)
a %>%
  group_by(sex, edu) %>%
  summarise(mean = mean(salary))



# 1, 2로 표시된 성별을 '남','여' 으로 바꿔준다.
rownames(a_sal_Sax) = c('남','여')
a_sal_Sax
rownames(a_sal_edu) = c('중졸이하','고졸','대졸이상')
a_sal_edu


sex_edu = list(a$sex, a$edu)
sex_edu
tapply(a$salary, sex_edu, mean)

install.packages("dplyr")
library(dplyr)

a %>%
  group_by(sex) %>%
  summarise(n=n(),
            min = min(salary),
            mean = mean(salary))

a
a %>%
  group_by(sex) %>%
  summarise(dd = min(age),
            de = mean(age), 
            sd = sd(age),
            gg = max(age))



# 연속형자료 그래프
# 1.줄기 잎 그림
score = scan("C:/Users/PC/Desktop/xo0ol_R/IspublicR/data2.txt")
stem(score)

stem(score, scale=2)

par(mfrow=c(1,1))
hist(score, nclass=4, main = 'histogram score')



# 2. 박스플롯
boxplot(score)


# 3. 산점도 그리기
# plot(x, y, ...)
plot(a$age, a$salary, col='skyblue', pch=19)


# 성별로 구분한 산점도 그리기 
# 첫번째 plot은 남, 여 구분 없이 산점도가 표현된다.
# 두번째 plot 도화지를 먼저 만든 후 
# 남자의 산점도, 여자의 산점도를 하나하나 그려냈다
par(mfrow=c(1,1))
plot(a$age, a$salary, col='skyblue', pch=19) # 첫번째 플롯


plot(a$age, a$salary, type="n") # 두번째 플롯
points(a$age[a$sex==1], a$salary[a$sex==1], pch="M", col="skyblue")
points(a$age[a$sex==2], a$salary[a$sex==2], pch="F", col="pink")
legend("bottomright", legend=c("mald","female"),
       pch=c("M","F"), col=c("skyblue","pink"))


