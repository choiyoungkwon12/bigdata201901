car1 <- read.csv("D:/cyk/Day03/car1.csv")
View(car1)

str(car1)
names(car1) <- c("이름" , "밤낮" , "사고수" , "사망" , "중상" , "부상", "고통", "리포트")
names(car1)
names(car1) <- c("name", "DayNight", "count", "death",  "injury",   "Sinjury",  "wound",    "report" )

car1$name

car1$result <- ifelse(car1$DayNight==1,"낮","밤")
car1$result2 <- ifelse(car1$name=="과속", "속도문제", "x")
car1$result3 <- ifelse(car1$count>5000, "큰사고", "작은사고")

table(car1$DayNight) #0 8개 8 8개
table(car1$result) # 낮 8개 밤 8개

#hist(table(car1$result)) # 히스토함수 
plot(table(car1$result)) # 막대 그래프

install.packages("ggplot2")
library(ggplot2)
qplot(car1$result)

#없는 컬럼을 하나 변수로 만들어 추가
#파생 변수
car1$result4 <- ifelse(car1$death >= 1000, "대형사고",
                       ifelse(car1$death >= 100, "중형사고","보통사고"))
car1$result4

View(car1)

table(car1$result4)

qplot(car1$result4) # ggplot2패키지 막대 그래프
plot(table(car1$result4)) #base패키지 막대 그래프

car2 <- data.frame(car1$name,car1$count,car1$result4)
car2
View(car2)

car2 <- data.frame(name = car1$name , count = car1$count ,result =  car1$result4) # name = car1$name 와 같이 하지 않으면 car1.name이렇게 설정됨

#요약함수(table함수)
#막대그래프(qplot함수)

#subset(추출대상 , 조건)
dayCount <- subset(car1$count , car1$DayNight==1 )
dayCount

nightCount <- subset(car1$count , car1$DayNight==0 )
nightCount

typeof(dayCount)
class(dayCount)
str(dayCount)

sum(dayCount) # 합
sum(nightCount)

# 1) 밤낮의 전체 사고 건수 결과를 데이터 프레임에 넣어보세요
# 2) 요약해보세요.
# 3) 막대 그래프를 그려보세요.

car3 <- data.frame(sDay = sum(dayCount), sNight= sum(nightCount))
car3 # 1번

car3 <- data.frame(Day = dayCount, Night= nightCount)
car3 

table(car3) # 2번요약
View(car3)

#qplot(car3$sDay)
hist(car3$sDay)

sum(dayCount)
mean(dayCount)
max(dayCount)
min(dayCount)
sum(nightCount)
mean(nightCount)
max(nightCount)
min(nightCount)

#ifelse(조건1 & 조건2)
#밤에 과속인 경우
result5 <- sum(ifelse(car1$DayNight==0&car1$name=="과속",car1$count,0))

#밤에 신호 위반인 경우
result6 <- sum(ifelse(car1$DayNight==0&car1$name=="신호위반",car1$count,0))

result5
result6

max(result5,result6) #result6



