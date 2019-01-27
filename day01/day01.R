 # 외부 라이브러리 설치

 install.packages("glue")
 install.packages("ggplot2") 

 # 외부 라이브러리 사용
 library(glue)

 # 여기에 glue를 이용해서 프린트 연습

 # temp 변수 : 아무것도 안 붙어있음. 
 #             정적인 값 저장
 #             
 # temp() 함수 : 동적인 처리


 # 벡터 만들어 보기
 # 할당 연산자(알트 + -)
 ages <- c(10,30,50)
  
  # 평균 %>% 정렬 %>% 프린트
  # 파이프연산자(alt+/)

 ages[1]
 ages[1] <- 20

  # 이름 벡터 만들고,
  # 두번째 사람이 박아무개로 개명
  # 이름의 전체 내용 출력.
  names <- c("김길동","박길동","이길동")
  names[2] <- "박아무개"
  names
  
  #factor 구분하기
  address <- c("서울","대구","부산","군산","서울","서울","대구")
  address
  
  str(address)
  str(year)
  str(ages)  
  str(address)  
  address2 <- as.factor(address)  
  address  
  address2  
  str(address2)  

  address2[1] <- "광주"
  address2[1] <-  "대구"
  address2
  
  #입력의 다양한 형태
  x <- scan()
  x
  x2 <- scan()   
  x2
  x2[2] <- 222
  str(x2)
  class(x2)
  typeof(x2)  
  
  food <- scan(what = "")
  
  str(food)
  class(food)  
  typeof(food)
  print(food)
  favorite <- food[1]
  cat("내가 제일 좋아하는 음식: ",favorite)  
  cat("음식",food[2])
  
  second <- food[2]
  glue("{food[2]}는 2번째로 좋아하는 음식이에요.")
  glue("{second}는 2번째로 좋아하는 음식이에요.")
  
    