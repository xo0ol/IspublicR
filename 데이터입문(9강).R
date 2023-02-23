2020/02/23
# csv파일은 패키지 다운로드없이 바로 가능하다.
s = read.csv("C:/Users/PC/Desktop/test.txt")

head(s, 3) # 앞 3개
tail(s, 3) # 마지막 3개
names(s)
mean(s$salary)


# xlsx파일은 install.packages("readxl") 패키지 다운로드
install.packages("readxl")
library("readxl")
a = read_excel("C:/Users/PC/Desktop/data1.xlsx")
head(a)
summary(a)

# tapply : 그룹화
a_sal_Sax = tapply(a$salary, a$sex, mean)
tapply(a$salary, a$sex, sd)

a_sal_edu = tapply(a$salary, a$edu, sd)
a_sal_edu

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
