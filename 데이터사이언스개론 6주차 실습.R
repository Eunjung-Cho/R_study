#데이터사이언스개론 6주차 실습
## 빠진 데이터, 이상한 데이터 제거하기

df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

df$sex == NA # 이거는 쓰지 않음 
#결측치 확인하기
is.na(df)
# not (!)결측치 확인하기
!is.na(df) 
#결측치 빈도 출력

#변수별로 결측치 확인하기

#결측치 포함된 상태로 분석
mean(df$score)

#결측치 있는 행 제거하기
library(dplyr)
df_nomiss <- df %>% filter(!is.na(score))
#결측치 제외한 데이터로 분석하기
sum(df_nomiss$score)

df_nomiss2 <- df %>% filter(!is.na(score) & !is.na(sex))
df_nomiss2

#결측치가 하나라도 있으면 제거하기
df_nomiss3 <- na.omit(df) #모든 변수에 결측치없는 데이터 추출
df_nomiss3 
# -> 주의할점: 분석에 필요한 데이터까지 손실 될 가능성 유의

#함수의 결측치 제외 기능 이용하기 - na.rm = T

mean(df$score, na.rm=T) #결측치 제외하고 평균 산출
sum(df$score, na.rm=T)

#summarise()에서 na.rm = T사용하기
exam <- read.csv("csv_exam.csv")            # 데이터 불러오기
exam[c(3, 8, 15), "math"] <- NA
exam %>% summarise(mean_math = mean(math))# 평균 산출
exam %>% summarise(mean_math = mean(math, na.rm = T))  # NA가 있으면 지우고 계산해줘!
exam %>% summarise(mean_math = mean(math, na.rm = T),      # 평균 산출
                   sum_math = sum(math, na.rm = T),        # 합계 산출
                   median_math = median(math, na.rm = T))  

for (i in 1:100){
  result <-ifelse(i%%3==0, "*", i)
  cat(result,'')
  }


i=1
while(i<10){result =5*i
print(result)
  i=i+1}

#(1) 1~100 사이의 정수 중 3의 배수들의 합과 개수를 구하시오
mysum <-0
myea<-0
for (i in 1:100){
  if (i%%3==0){
    mysum <-mysum +i
    myea <-myea +1
  }
}
mysum
myea

#(2) 101~200 사이의 숫자 중 3과 4의 공배수를 출력하시오
for (i in 101:200) {
  if (i%%3==0 & i%%4==0) {
    print(i)
  }
}

#(3) 24의 약수를 출력하시오
for (i in 1:24) {
  if (24%%i==0) {
    print(i)
  }
}

#(4) 10!을 출력하시오
result=1
for(i in 1:10) {
  result <- result*i
}
result



beers = c(5,2,9,8,3,7,3,5,3,5) 			# 자료 입력
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07, 	# 자료 입력
         0.06,0.02,0.05)
tbl <- data.frame(beers,bal) 			# 데이터프레임 생성
tbl
plot(bal~beers,data=tbl) 			# 산점도
res <- lm(bal~beers,data=tbl) 		# 회귀식 도출
abline(res) 				# 회귀선 그리기
cor(beers,bal) 	#상관계수 계산


month = 1:12 # 자료 입력
late = c(5,8,7,9,4,6,12,13,8,6,6,4) 	# 자료 입력
plot(month, 			# x data
     late, 			# y data
     main="지각생 통계", 	# 제목
     type= "l", 		# 그래프의 종류 선택(알파벳)
     lty=1, 			# 선의 종류(line type) 선택
     lwd=1, 			# 선의 굵기 선택
     xlab="Month", 		# x축 레이블
     ylab="Late cnt" 		# y축 레이블
)



