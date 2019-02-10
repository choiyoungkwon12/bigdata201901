a <- 100
b <- 200
c <- 100
print(a==b)
print(a==c)

if(a != b){
  print("두 수가 다릅니다.");
  print("끝");
}
#괄호
#소괄호()
#중괄호{}
#대괄호[]

#---------------------------------------
#순차적 실행 기본
#조건문(조건에 따라서 다르게 처리해야 하는경우)
#반복문(여러번 반복해서 처리해야 하는 경우)

i2 <- "빅데이터"
if(i2=="빅데이터"){
  print("i2는 빅데이터입니다.")
}else if(i2 == "파이썬"){
  print("i2는 파이썬입니다.")
}else{
  print("i2는 빅데이터와 파이썬이 아닙니다.")
}

fruit <- "사과"
if(fruit=="사과"){
  print("제철이군요")
}else if(fruit=="배"){
  print("설에 먹어요")
}else if(fruit=="키위"){
  print("수입이에요")
}else{
  print("과일이 아닌가 봐요.")
}

install.packages("lubridate")
library(lubridate)
date = now()
date
year(date)
month(date)
day(date)
wday(date,label = T)
hour(date)
minute(date)
second(date)

# 11시 전이면 굿모닝
# 13시 전이면 굿에프터눈
# 20시 전이면 굿이브닝
# 기타이면 굿나잇
if(hour(date)<=11){
  print("굿모닝")
}else if(hour(date)<=13){
  print("굿에프터눈")
}else if(hour(date)<=20){
  print("굿이브닝")
}else{
  print("굿나잇")
}

date+minutes(10) #data에 10분을 더한 값

#--------------------------------------------
#입력 받은 값 판별
input <- scan(what="") # scan()이면 숫자값만 받고 
                       # ()안에 what="을 작성해야만 문자값 작성 가능
if(input == "100점"){
  print("만점입니다.")
}else{
  print("다음 기회에")
}







