# 세션정보/필요한 패키지
sessionInfo()
library(tidyverse)
library(tidymodels)

# 일기
DF <- read_csv('D:/myR/sample.csv')
DF

# 변수 정리 
## 척도 확인 
sapply(DF, class)
str(DF)

# 수정 및 추가
## sx를 factor화, bmi 추가

DF <- mutate(DF, 
             sx =factor(sx),
             bmi=wt/(ht/100)^2)
DF
#(파이프 이용) DF <- DF %>% mutate(sx=factor(sx), bmi=wt/(ht/100)^2)


# 기초통계
## 전체 기초통계 
summary(DF)

## 성별 기초통계
DF %>% 
  group_by(sx) %>% 
  summarize(mnht=mean(ht), mnwt=mean(ht), mnbmi=mean(ht))

DF %>% 
  group_by(sx) %>% 
  summarize(sdht=sd(ht), sdwt=sd(ht), sdbmi=sd(ht))

## 성별 빈도
table(DF$sx)
xtabs(~sx, data=DF)

# 시각화
## 산점도
ggplot(DF, aes(x=wt, y=ht)) + geom_point()
ggplot(DF, aes(x=wt, y=ht, col=sx, shape=sx)) + geom_point()


## 시각화: 성별 상자그림
ggplot(DF, aes(x=sx, y=ht)) + geom_boxplot()




