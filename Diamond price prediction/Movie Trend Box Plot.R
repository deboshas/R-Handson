#load the ggplot 
library("ggplot2")

#set the working directory
setwd("E:\\R Programming\\Diamond price prediction")

#prepare the Genre and Studio ventor to be required for filtering for dta frame
genre <- c('action','adventure','drama','comedy','animation')
studio <- c('WB','Fox','Sony','Universal','Buena Vista Studios','Paramount Pictures')


#import the csv file nto R data frame
movie.data <- read.csv("MovieDomesticGross.csv")


#filter the data frame  usign bitwsie & opertor by combining two filetrs
movie.data <- movie.data[movie.data$Genre %in% genre &  movie.data$Studio %in% studio, ]


#rename a specific  column 
colnames(movie.data)[colnames(movie.data) == "Gross...US"] <- "GrossUS"
colnames(movie.data)[colnames(movie.data) == "Budget...mill."] <- "Budget"

#prepare for ggplot 
ggplotData <- ggplot(data =movie.data,aes(x=Genre,y=GrossUS) )

#paint the box plot and scatterplot 
ggplotData+geom_boxplot(size=0.5,alpha=0.5)+geom_point(aes(color=Studio,size=Budget))+
  xlab("Genre")+ylab("Gross % US")


