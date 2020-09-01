#데이터사이언스 개론 9주2차

#데이터 작성 
id <-1:10
x<-c(2,20,20,5,12,4,15,27,25,16) #나중에 rename 해서 이름 바꿀 수도 있다. 
y<-c(20,18,5,28,24,15,5,10,4,12)
data<-data.frame(ID=id, 식료품=x, 의류=y)
data

#데이터 분포 파악
plot(df[,2], df[,3], xlab="식료품", ylab="의류")#df[,2]-> x축에 데이터프레임의 2열을 뿌린다  
text(df[,2], df[,3],labels=df[,1], pos=4, col="blue")

#데이터 표준화 ->의류하고 식료품은 단위가 다름으로
data.scaled <- as.data.frame(scale(data[, -1], center=TRUE, scale=TRUE))
data.scaled

