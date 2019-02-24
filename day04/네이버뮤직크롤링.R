# 1. 네트워크로 연결
library(rvest)
library(dplyr)
# 2. 문서를 읽어야 한다. (모든 문서는 Ram에 있어야 하기 때문에)
url <- "http://music.naver.com/listen/top100.nhn?domain=DOMESTIC&duration=1h";
download.file(url, destfile = "navermusic.html",quiet = T)
naver_music <- read_html("navermusic.html");
naver_music

# 3. 데이터 추출(열 : 벡터), 전처리

# 1) 순위
ranking <- naver_music %>%
  html_nodes("._tracklist_move .ranking") %>% 
  html_text() %>% 
  as.numeric()

ranking
# 문자 1,2,3,...10 =>  작은것부터 정렬 시 1,10,,3,.. 앞 문자가 작은거 부터 
# 정렬하기 때문에 as.numeric() 전처리 사용

# 2) 순위 변동
gap <- naver_music %>%
  html_nodes("._tracklist_move .change") %>% 
  html_text() %>% 
  gsub(pattern = "\r\n||\t||\n||\r",replacement = "")

gap

# 3) 노래 제목
title <- naver_music %>%
  html_nodes(".name") %>% 
  html_text() %>% 
  gsub(pattern = "\r\n||\t||\n||\r",replacement = "") %>% 
  trimws()  

title

# 4) 가수명
artist <- naver_music %>%
  html_nodes("._tracklist_move .artist a") %>% 
  html_text() %>% 
  gsub(pattern = "\r\n||\t||\n||\r",replacement = "")

artist

# 4. 데이터 프레임에 넣는다
musicTop50 <- data.frame(ranking,gap,title,artist)

musicTop50 %>% head(5)
musicTop50 %>% tail(5)
