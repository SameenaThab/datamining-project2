hmatrix<-matrix(c(0,0.3,.4,0.7,0.6,0.3,0,0.5,0.8,0.2,0.4,0.5,0,0.45,0.4,0.7,0.8,0.45,0,0.35,0.6,0.2,0.4,0.35,0),nrow=5,ncol=5)

hie<-function(h)
{
  temp<-h
  min<-100;
  cluslevel1<-list()
  k=1;
  # c1<-null
  n<-nrow(temp)
  while(n>1)
  {
  #one pair
  for(i in 1:nrow(temp))
  {
    for(j in 1:ncol(temp))
    {
      if(i!=j)
      {
        if(temp[i,j]<min)
        {
          min<-temp[i,j]
          x<-i
          y<-j
        }
      }
      
    }
  }
    for(i in 1:nrow(temp))
    {
      temp[x,i]<-100
      temp[i,x]<-100
      temp[y,i]<-100
      temp[i,y]<-100
    }
  c1<-c(i,j)
  n<-n-2
  c11<-c(x,y)
  print(c11)
  cluslevel1[[k]]<-c(x,y)
  k<-k+1
  print(min)
  print(temp) 
  min<-100
  }
 #    c11<-c(x,y)
 #    print(c11)
 #    cluslevel1[[k]]<-c(x,y)
 #    k<-k+1
 #    print(min)
 #   print(temp) 
 # min<-100
 #   #second pair
 #   for(i in 1:nrow(temp))
 #   {
 #     for(j in 1:ncol(temp))
 #     {
 #       if(i!=j)
 #       {
 #         if(temp[i,j]<min)
 #         {
 #           min<-temp[i,j]
 #           x<-i
 #           y<-j
 #         }
 #       }
 #       
 #     }
 #   }
 #   for(i in 1:nrow(temp))
 #   {
 #     temp[x,i]<-100
 #     temp[i,x]<-100
 #     temp[y,i]<-100
 #     temp[i,y]<-100
 #   }
 #   c2<-c(x,y)
 #   print(c2)
 #   n<-n-2
 #   # }
 #   cluslevel1[[k]]<-c(x,y)
 #  k<-k+1
 #    #print(cluslevel1)
 #  print(min)
 #   print(temp) 
   
   if(n==1)
   {
   for(i in 1:nrow(temp))
   {
    if(temp[i,i]==0)
      x=i
   }
     
   }
  cluslevel1[[k]]<-c(x)
  print("clusters at level 1")
   print(cluslevel1)
}


comlink<-funtion(h,m)
{
  max<-0
  for(i in 1:length(l))
  {
    m<-as.vector(l[[i]])
    
  }
}

