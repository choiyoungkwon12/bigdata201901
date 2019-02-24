file <- read.csv("D:/cyk/day04/naData.csv")
file
str(file)

mean(file$english)
mean(file$math)

file$math <- ifelse(is.na(file$math), 0, file$math) # file의 math값이 na이면 0점 아니면 math값을 넣어줌


