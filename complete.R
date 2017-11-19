t<-as.data.frame(hmatrix)
length(t)
c1<-c(2,5)
hm<-data.frame('numeric')
n<-function()
{
for(i in 1:length(t))
{
  max<-0
  for(j in 1:length(c1))
  {
    print(t[i,c1[j]])
    if(i!=c1[j])
    {
    if(t[i,c1[j]]>max)
    {
      max<-t[i,c1[j]]
    }
    }
    
  }
  hm[i,1]<-max
}
  }

