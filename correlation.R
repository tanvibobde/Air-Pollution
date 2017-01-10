correlation<-function(dir,thresh){
  source('completecases.R')
  complete<-completeobs(dir,id=1:332)
  result<-numeric()
  for(i in complete$id[complete$nobs>thresh]){
    x<-filepath(dir,i)
    dat<-read.csv(x)
    corcal<-cor(dat$sulfate,dat$nitrate,use='complete.obs')
    result<-c(result,corcal)
    
  }
  return(result)
}
