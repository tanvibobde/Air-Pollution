pollutantmean<-function(directory,pollutant,id){
  source('Filename.R')
  values<- numeric()
  for(i in 1:length(id)){
    names<-filepath(directory,i)
    data<-read.csv(names)
    if(pollutant=='sulfate'){
      values<- c(values,data$sulfate)
      
    }
    else if(pollutant == 'nitrate'){
      values<- c(values,data$nitrate)
    }
  }
  means<- mean(values,na.rm= TRUE)
  return(means)
}