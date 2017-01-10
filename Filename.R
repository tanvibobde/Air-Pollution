filepath<-function(directory,id){
  filename<-character(length(id))
  for(i in 1:length(id)){
    if(id[i]<=9){
      filename[i]<-paste(directory,"/","00",id[i],".csv",sep="")
    }
    else if(id[i]>=10 && id[i]<100){
      filename[i]<-paste(directory,"/","0",id[i],".csv",sep="")
      
    }
    else{
      filename[i]<-paste(directory,"/",id[i],".csv",sep="")
      
    }
  }
  return(filename)
}   