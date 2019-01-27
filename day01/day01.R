// 외부 라이브러리 설치

install.packages("glue")
install.packages("ggplot2") 

// 외부 라이브러리 사용
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

