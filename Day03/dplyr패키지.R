install.packages("dplyr")
library(dplyr)
#bindrcpp 불리는 패키지가 없습니다 -> bindrcpp install.packages 설치 후 다시 

exam <- read.csv("D:/cyk/Day03/data/csv_excel_exam.csv")
View(exam)

exam %>% filter(class == 1) %>% head(3)

#ctrl + shift + m => %>%
class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)
class3 <- exam %>% filter(class == 3)
class4 <- exam %>% filter(class == 4)

classNot1 <- exam %>% filter(class!=1)
classNot1

exam %>% filter(english <= 80 & class == 3)


exam %>% filter(math >= 80 | science >= 85)
exam %>% filter(class==1|class==3|class==5)
exam %>% filter(class %in% c(1,3,5)) # 클래스가 1,3,5 에 포함되는지 

mean(class1$math)
max(class1$math)

#ggplot2 : package + dataset
install.packages("ggplot2")
library(ggplot2)

as.data.frame(ggplot2::mpg)
mpg


# 1. ford 차량 filter로 row 추출
# 2. 고속도로 연비 추출
# 3. 평균

ford1 <- mpg %>% filter(manufacturer=="ford")
mean(ford1$hwy)

# 1. class가 compact의 고속도로 평균 연비
compact <- mpg %>% filter(class=="compact")
mean(compact$hwy)
# 2. class가 suv의 고속도로 평균 연비
suv <- mpg %>% filter(class=="suv")
mean(suv$hwy)


exam %>% select(math)
exam %>% select(-math) # math 뺀 나머지
exam %>% select(math,english)
exam %>% select(-math,-english) # math와 eng 뺀 나머지

#R은 들여쓰기 의미가 없음.
#들여쓰는 이유는 에러를 쉽게 잡을 수 있게 하기 위해(가독성때문)
#파이썬은 들여쓰기가 문법의 일부.
#파이썬은 들여쓰기를 반드시 해야함.

exam %>% 
  filter(class==3) %>% 
  select(english) %>% 
  head(2)  # head에 아무것도 작성하지 않으면 4개만 보여줌 작성하면 작성한 갯수만큼

exam %>% arrange(math)
exam %>% arrange(class,math)
exam %>% arrange(desc(class),math)
exam %>% mutate(total=math+english+science) # 파생변수

exam %>% 
  group_by(class) %>% 
  summarise(mean = mean(math),# mean() 평규함수
            sumMath = sum(math),#sum 합계
            median = median(math),#median 중간 값 함수
            n = n()) # 전체갯수
###################################################################################
mpg %>% 
  group_by(manufacturer) %>% 
  filter(class=="suv") %>% 
  mutate(tbt=(cty+hwy)/2) %>% 
  summarise(meanTot = mean(tbt)) %>% 
  arrange(desc(meanTot)) %>% 
  head(5)

  













