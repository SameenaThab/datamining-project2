hie<-function(h)
{
  temp<-h
  disim<-vector('numeric')
  stacku<-vector('numeric')
  min<-100;
  cluslevel1<-list()
  k=1;
  count<-nrow(h)
  n<-nrow(temp)
    #level 1
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
    # for(i in 1:nrow(temp))
    # {
    #   temp[x,i]<-100
    #   temp[i,x]<-100
    #   temp[y,i]<-100
    #   temp[i,y]<-100
    # }
    stacku<-c(x,y)
    disim<-temp[x,y]
    #print(paste("disim ",disim))
    #print("initial matrix,")
    # print(temp)
    temp[x,y]<-100
    temp[y,x]<-100
    #n<-n-2
    # print("second matrix,")
    # print(temp)
    v<-vector('numeric')
    cluslevel1[[k]]<-c(x,y)
    count<-count-2
    # print(paste("stacku",stacku))
    while(count!=0)
    {
    m<-as.vector(cluslevel1[[k]])
    # print(paste("This is",length(m)))
    min<-100
    for(i in 1:length(stacku))
    {
      # print(paste("stack value now",stacku[i]))
      x<-stacku[i]
      #mini<-vector('numeric')
      for(j in 1:nrow(temp))
      {
        if(x!=j)
        {
        if(temp[x,j]<min)
        {

          min<-temp[x,j]
          #print(paste("min here",min))
        minj<-j
        mini<-x
        # print(paste("mini here",mini))
        # print(paste("minj here",minj))
        }
        }
      }
    }
    # print(paste("i and j here are",mini,minj))
    disim[length(disim)+1]<-temp[mini,minj]
    temp[mini,minj]<-100
    temp[minj,mini]<-100
    b<-cluslevel1[[k]]
    b[length(b)+1]<-minj
    k<-k+1
    cluslevel1[[k]]<-b
    stacku[length(stacku)+1]<-minj
    # print(paste("disimilarty at some level", disim))
    # print(paste("level",count))
    # print(paste("stacku",stacku))
    # print(temp)
    # print(cluslevel1)
    count<-count-1
    }
    #print(paste("stacku",stacku))
    print("list of clusters")
    print(cluslevel1)
    x<-cluslevel1[[1]]
    print("hierarchy of clusters")
    for (i in 1:length(cluslevel1)) {
      print(cluslevel1[[i]])
      print(disim[i])
    }
    # print(x)
    # for(i in 2:length(cluslevel1))
    # {
    #   x<-append(x,cluslevel1[[i]])
    #   print(x)
    #   
    # }
}