install.packages("rJava")
install.packages("DBI")
install.packages("RMySQL")
#lib import

library(RMySQL)
# 1. DB연결
# 2. SQL문 실행 요청
con <- dbConnect(MySQL(),
                dbname='bigdata',
                user='root',
                  password='1234')
dbListTables(con)
dbListFields(con,"member")
#============================================================
# 1.table에 파일을 읽어서 넣기
#============================================================
d <- dbReadTable(con,"member")
d

dfData <- read.csv("member.csv",head=T)
dfData

dbWriteTable(con, "member", dfData, overwrite = T)

dfData

#============================================================
# 2. SQL문을 요청해서 결과 받아오기
#============================================================
df.table <- dbGetQuery(con,"select * from member")
df.table
class(df.table)


dbDisconnect(con)









