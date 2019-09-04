setwd("E:\\R Programming\\Diamond price prediction")#set working directory for files fetching

#import the  movie data set
movies.data <- read.csv("P2-Movie-Ratings.csv")
head(movies.data)
colnames(movies.data) <- c("Movie","Genre","CriticsRating","AudienceRating","Budget","Year")
tail(movies.data)
str(movies.data)
summary(movies.data)

#Convert Year to a factor for catagorization and visualizing 
movies.data$Year <- factor(movies.data$Year)


#Facet grid for scatter plot between genre(x) and Budget(y),,practice you viusalization here in this region
ggdata <- ggplot(data=movies.data,aes(x=CriticsRating,y=AudienceRating))
ggdata+geom_point(aes(color=Genre,size=Budget))+xlim(0,100)+ylim(0,100)+geom_smooth()+facet_grid(.~Genre,scales="free")
ggdata+geom_point(aes(color=Genre,size=Budget))+xlim(0,100)+ylim(0)+geom_smooth()+facet_grid(Year~.,scales="free")
ggdata+geom_point(aes(color=Genre,size=Budget))+xlim(0,100)+ylim(0,100)+geom_smooth()+facet_grid(Year~Genre,scales="free")


mean.budget <-mean(movies.data$Budget)
sd.budget <-  sd(movies.data$Budget)

budgetData <- ggplot(data=movies.data,aes(x=Budget))
budgetData+geom_histogram(binwidth=10,color="blue",)+geom_density(aes(y=..scaled..))
budgetData+geom_boxplot(aes(x="",y=Budget)) #good for mode understanding
budgetData+geom_histogram(aes(y=..density..))+geom_density()

  #-------------------------------------------------------------------Aesthetics and Geometry-------------
library(ggplot2)
# p is a data and asethetics 
 #p <- ggplot(data=movies.data,aes(x=CriticsRating,y=AudienceRating,
                                  #color=Genre,size=Budget))
 #p+geom_point()+geom_line()
 
ggplot(data=movies.data,aes(x=CriticsRating,y=AudienceRating,
                            color=Genre,size=Budget)) +
geom_point()

#--------------------------Layers-----------------------------------------------------------------------
# p is a data and asethetics 
p <- ggplot(data=movies.data,aes(x=CriticsRating,y=AudienceRating,color=Genre,size=Budget))
p+geom_point()+geom_line()
p+geom_line()+geom_point()
#----------------------------------Overriding Aesthetics--------------------------------------------------------------------------------

q <- ggplot(data=movies.data,aes(x=CriticsRating,y=AudienceRating,color=Genre,size=Budget))
q+geom_point()
q + geom_point(aes(size=CriticsRating))
q+geom_point(aes(color=Budget))

q+geom_point(aes(x=Budget,color=Year))+xlab("Budget In Millions")

#---------------Mapping vs setting------------------------------------------------------------------------
 r <- ggplot(data=movies.data,aes(x=CriticsRating,y=AudienceRating))

r+geom_point()

#Add color in mapping,already have done,map the color to a column
r+geom_point(aes(color=Genre))

#2 settings way

r+geom_point(color="DarkGreen") # set  a color ,not mapping to any column any data set

r+geom_point(aes(color="Red"))#error ,mapping is not done to any column in the dataset

#Mapping

r+geom_point(aes(size=Budget,color=Genre))

#setting

r+geom_point(size=10,color='green')

#------Histogram and Density chart---------------------------------------------------------------------------------


s <- ggplot(data=movies.data,aes(x=Budget)) # only x axis for histogram 
s + geom_histogram(binwidth = 10,aes(fill=Genre))#map teh  color 
s +geom_histogram(binwidth=10,aes(fill=Genre),color="Black")#setting  Add a border to each bin


#Density chart

s+geom_density(aes(fill=Genre)) #pdf function

#------------ layer tips---------------------


t <- ggplot(data=movies.data)

t+geom_histogram(binwidth = 5,aes(x=CriticsRating,fill=Genre),color="blue")

t+geom_histogram(binwidth = 5,aes(x=AudienceRating,fill=Genre),color="blue")

#Statistical Transformation-------------------------------------------------------------------------------------
?geom_smooth()

u <-ggplot(data=movies.data,aes(x=Genre,y=AudienceRating,color=Genre))
 u+geom_point()+geom_smooth(fill=NA)

#box plots
 u+geom_boxplot(size=1.2)+geom_point()
 
 #hacks
 u+geom_boxplot(size=1.2)+geom_jitter()
 #another way
 u+geom_point()+geom_boxplot(size=1.2,alpha=0.5)+xlab("Genre")
 
 #--Critics rating box plot---------------------------------------------------------------
 
 v <- ggplot(data=movies.data)
 
 v+geom_point(aes(x=Genre,y=CriticsRating,color=Genre))+geom_boxplot(aes(x=Genre,y=CriticsRating,color=Genre),size=1.5,alpha=0.5)

#Factes---------------------------------------------------------------------------------------------------------------------------------
 
 
 
 v<- ggplot(data=movies.data)
 
 v + geom_histogram(binwidth = 10,aes(x=Budget,fill=Genre),color="Black")
 
 #factes-  chart for each genre
 #vertical comapare
 v + geom_histogram(binwidth = 10,aes(x=Budget,fill=Genre),color="Black")+
         facet_grid(.~Genre,scales="free")
 #horizontal comapre
 v + geom_histogram(binwidth = 10,aes(x=Budget,fill=Genre),color="Black")+
         facet_grid(Genre~.,scales="free")
 
 #apply factes to scatter plot
 w <- ggplot(data=movies.data,aes(x=CriticsRating,y=AudienceRating,color=Genre))
 w+geom_point()+geom_smooth()+facet_grid(.~Genre,scales="free")
 w+geom_point()+geom_smooth()+facet_grid(.~Year,scales="free")
 w+geom_point(aes(size=Budget))+geom_smooth()+facet_grid(Genre~Year,scales="free")
 
 #co-ordinates layer
 
 #limit our axis and zoom our axis 
 
 m <-ggplot(data=movies.data,aes(x=CriticsRating,y=AudienceRating,color=Genre,size=Budget))
      m+ geom_point()+
         xlim(50,100)+
         ylim(50,100)
 
 #zoom in 
      
 n <- ggplot(data=movies.data,aes(x=Budget))
 n+geom_histogram(binWidth=10,aes(fill=Genre),color="black")+ylim(0,50)
 
 #
 n+geom_histogram(binWidth=10,aes(fill=Genre),color="black")+coord_cartesian(ylim = c(0,50))
 
 w+geom_point(aes(size=Budget))+geom_smooth()+facet_grid(Genre~Year,scales="free")+coord_cartesian((ylim=c(0,100)))
 
 
 
 #Themes in visalization layer-----------------------------
 
 
 o <- ggplot(data=movies.data)
 
  h <- o+geom_histogram(binwidth=10,aes(x=Budget,fill=Genre),color="black")
  
 
 #Add a axis label  as well as theming
 h+xlab("Budget In Millions")+ylab("No of Movies")+ggtitle("Movie Budget Distribution")+theme(legend.position=c(1,1),legend.justification =c(1,1),plot.title =element_text(size=10,colour = "blue") )
         
 

 
 
 
 
 