completeobs<- function(dir,id){
  source('Filename.R')
  z<-data.frame(id=numeric(),nobs=numeric())
  for(i in id){
    x<- filepath(dir,i)
    dat<-read.csv(x)
    y<-complete.cases(dat)
    y<-length(y[y==TRUE])
    z<-rbind(z,data.frame(id=i,nobs=y))
  }
  return(z)
}