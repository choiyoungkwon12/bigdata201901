install.packages("rvest")
library(rvest)

url <- "http://www.daum.net"
htmlText <- read_html(url)
htmlText


news <- html_nodes(htmlText,"#news")
news
 # 클래스는 . id 는 # 태그는 그냥
product1 <- html_nodes(htmlText,".screen_out")
product1

product2 <- html_nodes(htmlText,"h2")
product2

product1Text <- html_text(product1) # product1에 있는 태그사이에 있는 것만 가져오세요.
product1Text

product3 <- html_nodes(htmlText,".link_webtoon")
product3

product3Text <- html_text(product3)
product3Text

product4 <- html_nodes(htmlText,".txt_pctop")
product4

product4Text <- html_text(product4)
product4Text

product4Text[c(1:5)]
