---
  title: "P2_template"
author: "Your Name"
date: "January 18, 2017"
output:
  html_document:
  css: min.css
highlight: textmate
theme: null
pdf_document: default
---
#Q5-a
ktable<-data.frame(X1=c(1,1,0,2,5,6,4,5),X2=c(4,3,4,5,1,2,0,2),Groups=c(1,1,2,2,1,2,1,2))
print("initial plot ")
ggplot(ktable, aes(x=X1,y=X2))+geom_point(colour="white", shape=21, size = 4,aes(fill = factor(Groups)))+scale_fill_manual(values=c("blue", "red"))
par(new=TRUE)

#Q5-b
eucli<-function(x1,y1,x2,y2)
{
  result<-sqrt((x1-x2)^2+(y1-y2)^2)
  return(result)
}
g11<-subset(ktable,Groups==1)
temp1<-g11
g22<-subset(ktable,Groups==2)
temp2<-g22
cenx1=0
ceny1=0
cenx2=0
ceny2=0
for(i in 1:nrow(g11))
{
  cenx1<-cenx1+g11[i,1]
  ceny1<-ceny1+g11[i,2]
}
cenx1=cenx1/nrow(g11)
ceny1=ceny1/nrow(g11)
centrod1<-c(cenx1,ceny1)
print(paste("centroid of cluster 1 at iteration 1:",cenx1,ceny1))
for(i in 1:nrow(g22))
{
  cenx2<-cenx2+g22[i,1]
  ceny2<-ceny2+g22[i,2]
}
cenx2=cenx2/nrow(g22)
ceny2=ceny2/nrow(g22)
centrod1<-data.frame(c(cenx2),c(ceny2))
print(paste("centroid of cluster 1 at iteration 1:",cenx2,ceny2))
# ggplot(ktable, aes(x=X1,y=X2))+geom_point(colour="white", shape=21, size = 4,aes(fill = factor(Groups)))+scale_fill_manual(values=c("blue", "red"))
# par(new=TRUE)
#--------------------------------------------
#Q4
print("iteration 1")
dist1<-vector('numeric')
dist2<-vector('numeric')
for(i in 1:nrow(ktable))
{
 dist1[i]<-eucli(ktable[i,1],ktable[i,2],cenx1,ceny1)
  dist2[i]<-eucli(ktable[i,1],ktable[i,2],cenx2,ceny2)
  if(dist1[i]<dist2[i])
  {
    ktable[i,3]=1
  }
  else
  {
    ktable[i,3]=2
  }
}
g11<-subset(ktable,Groups==1)
print("new cluster:")
print(g11)
g22<-subset(ktable,Groups==2)
print(g22)
print(paste("new cluster:",g22))
ggplot(ktable, aes(x=X1,y=X2))+geom_point(colour="white", shape=21, size = 4,aes(fill = factor(Groups)))+scale_fill_manual(values=c("blue", "red"))

#------------------------------
#repeating from here
print("iteration 2")
for(i in 1:nrow(g11))
{
  cenx1<-cenx1+g11[i,1]
  ceny1<-ceny1+g11[i,2]
}
cenx1=cenx1/nrow(g11)
ceny1=ceny1/nrow(g11)
centrod1<-c(cenx1,ceny1)
print(paste("centroid of cluster 1 at iteration 2:",cenx1,ceny1))
for(i in 1:nrow(g22))
{
  cenx2<-cenx2+g22[i,1]
  ceny2<-ceny2+g22[i,2]
}
cenx2=cenx2/nrow(g22)
ceny2=ceny2/nrow(g22)
centrod1<-data.frame(c(cenx2),c(ceny2))
print(paste("centroid of cluster 1 at iteration 2:",cenx2,ceny2))
dist1<-vector('numeric')
dist2<-vector('numeric')
for(i in 1:nrow(ktable))
{
  dist1[i]<-eucli(ktable[i,1],ktable[i,2],cenx1,ceny1)
  dist2[i]<-eucli(ktable[i,1],ktable[i,2],cenx2,ceny2)
  if(dist1[i]<dist2[i])
  {
    ktable[i,3]=1
  }
  else
  {
    ktable[i,3]=2
  }
}
g11<-subset(ktable,Groups==1)
print("new cluster:")
print(g11)
g22<-subset(ktable,Groups==2)
print("new cluster:")
print(g22)
ggplot(ktable, aes(x=X1,y=X2))+geom_point(colour="white", shape=21, size = 4,aes(fill = factor(Groups)))+scale_fill_manual(values=c("blue", "red"))
