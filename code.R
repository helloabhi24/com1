library(readxl)
IInd <- read_excel("E:/MCA assignment1/IInd.xlsx", 
                   col_types = c("numeric", "text", "numeric", 
                                 "text", "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "text", "numeric", "numeric", 
                                 "numeric", "text", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric"))
View(IInd)
g<-aggregate(`DAA/INT`~Year,IInd,FUN = max )
g
g2<-apply(IInd$`DAA/INT`,list(IInd$Year),max)
?apply

tapply(IInd$OS_INT,IInd$Year,max)
g2<-as.matrix(g2)
g2[,2]
gg<-aggregate(OS_INT~Year,IInd,FUN = min )
ggg<-aggregate(OS_INT~Year,IInd,FUN = min )
gggg<-aggregate(OS_INT~Year,IInd,FUN = mean )
gggg
library(plotly)
library(ggplot2)
Year<-g$Year
ggf<-IInd$Year
length(ggf) 
length(IInd$OS_INT)
max1<-g$OS_INT
max1
min1<-gg$OS_INT 
mean1<-gggg$OS_INT
mean1
median1<-ggg$OS_INT
data11<-data.frame(Year,g)
p1<-plot_ly(data11,x=~Year,y=~max1,type='bar',name='max'
)%>%add_trace(y=~min1,name="min"
)%>%add_trace(y=~mean1,name="mean"
)%>%add_trace(y=~median1,name='Median'
)%>%layout(yaxis=list(title='Count'),barmode='group')
(p1)


plot.df <- data.frame(IInd[,input$featureInput1],
                      IInd[,input$featureInput2],
                      Class = IInd$Class)
df<-data.frame(d=IInd$Year,f=IInd$OS_INT)

View(IInd)
sub1<-subset(IInd,Year=='2013')
sub2<-subset(IInd,Year=='2014')

b1<-sub1[,c(5:11,13:19,21,23,29:35,37:43,45)]
b2<-names(b1[,c(1:31)])
r<-factor(b2)
g3<-lapply(1:15,function(i){
  max(b1[,i])
})
g4<-lapply(1:15,function(i){
  min(b1[,i])})
data.1<-data.frame(r,g3,g4)
q1<-plot_ly(x=~r,y=g3,type = 'bar',name='Max'
)%>%add_trace(y=~g4,name='Min'
)%>%layout(xaxis=list(title='2013'),yaxis=list(title='value'),barmode='group')
q1

b2<-sub2[,c(5:11,13:19,21,23,29:35,37:43,45)]
View(b1)
b3<-names(b2[,c(1:31)])
r1<-factor(b3)
g4<-lapply(1:15,function(i){
  max(b2[,i])
})
g5<-lapply(1:15,function(i){
  min(b2[,i])})
data.2<-data.frame(r1,g4,g5)
q2<-plot_ly(x=~r1,y=g4,type = 'bar',name='Max'
)%>%add_trace(y=~g5,name='Min'
)%>%layout(xaxis=list(title='2014'),yaxis=list(title='value'),barmode='group')


aa<-sub1[,c(29:35,37:43,45)]
str(aa)
aa1<-names(aa[,c(1:15)])
z<-factor(aa1)
a1<-lapply(1:15,function(i){
  max(aa[,i])
})

a2<-lapply(1:15,function(i){
  min(aa[,i])
})
data11<-data.frame(z,a1,a2)

p6<-plot_ly(x=~z,y=a1,type = 'bar',name='Max'
)%>%add_trace(y=~a2,name='Min'
)%>%layout(xaxis=list(title='2013'),yaxis=list(title='value'),barmode='group')
q1
aa1<-sub2[,c(29:35,37:43,45)]
str(aa)
aa12<-names(aa[,c(1:15)])
z1<-factor(aa12)
a12<-lapply(1:15,function(i){
  max(aa1[,i])
})
a1
a22<-lapply(1:15,function(i){
  min(aa1[,i])
})
data111<-data.frame(z1,a12,a22)

p5<-plot_ly(x=~z1,y=a12,type = 'bar',name='Max'
)%>%add_trace(y=~a22,name='Min'
)%>%layout(xaxis=list(title='2014'),yaxis=list(title='value'),barmode='group')

su1<-sub2[,c(5:11,13:19,21,23)]
su<-sub1[,c(5:11,13:19,21:23)]
nam1<-names(su1[,c(1:15)])
nam<-names(su[,c(1:15)])
x2<-factor(nam1)
x1<-factor(nam)
lp1<-lapply(1:15,function(i){
  max(su[,i])
})

lp12<-lapply(1:15,function(i){
  max(su1[,i])
})
lp21<-lapply(1:15,function(i){
  min(su[,i])
})
lp22<-lapply(1:15,function(i){
  min(su1[,i])
})

p3<-plot_ly(x=~x1,y=lp1,type = 'bar',name='Max'
)%>%add_trace(y=~lp2,name='Min'
)%>%layout(xaxis=list(title='2013'),yaxis=list(title='value'),barmode='group')


p4<-plot_ly(x=~x2,y=lp12,type = 'bar',name='Max'
)%>%add_trace(y=~lp21,name='Min'
)%>%layout(xaxis=list(title='2014'),yaxis=list(title='value'),barmode='group')

p3
p4
