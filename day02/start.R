a <- 100
b <- 200
print(a+b)

# 주석 (설명)
# 프로그램 전체 제어문
  # 1. 프로그램은 순차적으로 실행
  # 2. 조건
  # 3. 반복
# 데이터의 자료 구조복
  # 데이터프레임 = 벡터(열) + 리스트(행)


name <- c(1,2,3,4,5)
name[3]
name[3] <- 4
name[3] <- 3
name
names <- c("김지훈","이유진","박동현","김민지")
names[4] <- "송민지"
names

str(name)  #구조
str(names)
table(name) #요약
table(names)
class(name) #데이터의 타입
class(names)
typeof(name) #데이터의 타입(상세)
typeof(names)

eng <- c(90,80,60,70)
mat <- c(50,60,100,20)

# 자동완성(ctrl + spaceBar , 탭(Tab))
midTerm <- data.frame(names,eng,mat)
str(midTerm)
midTerm

str(midTerm)  #구조
table(midTerm) #요약
class(midTerm) #데이터의 타입
typeof(midTerm) #데이터의 타입(상세)

View(midTerm)

#######################################################
#2.직접 데이터프레임을 만들어 봅시다.
lastTerm <- data.frame(
  name2 = c("song","kim","park"),
  eng2 = c(100,50,80),
  mat2 = c(50,60,80)
)
View(lastTerm)
lastTerm$name2
lastTerm$eng2
lastTerm$mat2

str(lastTerm$name2)
str(lastTerm$eng2)
table(lastTerm$eng2)

#요약
test <- c("apple","banana","kiwi","apple","banana","apple")
table(test)

#평균
mean(lastTerm$eng2)
mean(lastTerm$mat2)

#합계
sum(lastTerm$eng2)

midTerm2 <- read.csv("D:/cyk/day02/midTerm2.csv")
View(midTerm2)

str(midTerm2)


install.packages("readxl")
library("readxl") # 패키지 readxl다운로드 후 library로 사

midTerm3 <- read_excel("D:/cyk/Day02/midTest3.xlsx")
View(midTerm3)

str(midTerm3)

rm(a) #변수삭제
rm(b) 
ls()  #변수들의 리스트
list <- ls()
list
class(list)
#전체 삭제
rm(list = ls())
ls()

midTerm2$name

subMidTerm <- data.frame(midTerm2$name,
                         midTerm2$tel)
subMidTerm
View(subMidTerm)
subMidTerm2 <- data.frame(name2 = midTerm2$name,
                         tel2 = midTerm2$tel)
subMidTerm2
View(subMidTerm2)

write.csv(subMidTerm2,file = "subMidTerm2.csv")

subMidTerm2
subMidTerm2$age2 <- c(20,30,40)

# alt + - (할당)
addr <- c("서울시","부산","경기도")
subMidTerm2$addr <- addr

names(subMidTerm2)

subMidTerm2[1] # 열추출 => name2(첫번째 열)
subMidTerm2[1,] # 행,열  (1행,모두가져옴)
subMidTerm2[3,1]
subMidTerm2[3,3]
subMidTerm2[,1]

#행,열 삭제
subMidTerm2[,-1]
subMidTerm3 <- subMidTerm2[,-1]
subMidTerm3
subMidTerm4 <- subMidTerm2[-1,]
subMidTerm4
subMidTerm5 <- subMidTerm2[,-c(2:4)] # :(콜론은) => ~ 와 같음
subMidTerm5
subMidTerm6 <- subMidTerm2[,-c(1,3)]
subMidTerm6
temp1 <- c(1:100)
temp2 <- c(1,3,5,7,9)
temp1
temp2

#삼항 연산자
temp3 <- 80
result <- ifelse(temp3>=80,"통과","실패")
result
#--------------------------------------------------------------
temp4 <- 10

while(temp4>7){
  print("7보다 큽니다.")
  temp4 <- temp4-1;
}


