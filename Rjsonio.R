library(RJSONIO)

gnomeraw<-fromJSON("https://dcc.icgc.org/api/v1/projects/GBM-US/mutations?field=id,mutation,type,chromosome,start,end&size=100&order=desc")
gnome<-gnomeraw[['hits']]
length(gnome[[1]])

gnome[[1]]
gnome[[1]][[1]]

gnomeID<-sapply(gnome, function(x) x[[1]])
head(gnomeID)

#trim JSON dataset 
library(gdata) # for the trim function
grabInfo<-function(var){
  print(paste("Variable", var, sep=" "))  
  sapply(gnome, function(x) returnData(x, var)) 
}

returnData<-function(x, var){
  if(!is.null( x[[var]])){
    return( trim(x[[var]]))
  }else{
    return(NA)
  }
}

#creating data frame from gnome JSON file
gnomeDF<-data.frame(sapply(1:6, grabInfo), stringsAsFactors=FALSE)

#renaming column
library(plyr)
names(gnomeDF)
gnomeDF
gnomeDF <- rename(gnomeDF, c("X1"="id", "X2"="mutation_type", "X3"="chromosome", "X4"="start_pos", "X5"="end_pos", "X6"="mutation"))

str(gnomeDF)
gnomeDF$mutation_type <- as.factor(gnomeDF$mutation_type)
gnomeDF$mutation <- as.factor(gnomeDF$mutation)
gnomeDF$chromosome <- as.factor(gnomeDF$chromosome)

# creating barplot
library(ggplot2)
gmutationType <- ggplot(gnomeDF, aes(mutation_type))
g + geom_bar(aes(fill=mutation_type))

gmutation <- ggplot(gnomeDF, aes(mutation))
g + geom_bar(aes(fill=mutation))

gchromosome <- ggplot(gnomeDF, aes(chromosome))
g + geom_bar(aes(fill=chromosome))