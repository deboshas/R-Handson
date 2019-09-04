Salary
Games
MinutesPlayed

#matrix
?matrix
#prepare a matirx by my own
my.data <- c(1,2,3,4,5,6,7,8,90,10,11,12,13,14,15,16,17,18,19,20)
A <- matrix(my.data,4,5)
A
A[2,3]
  A[2,]
B <- matrix(my.data,4,5,byrow=TRUE)
B[2,5]


#rbind  and cbind
r1 <- c(1,2,3,4,5)
r2 <- c(10,11,12,13,14,15)
r3 <- c(1,1,1,1,1,1)

r4 <- rbind(r1,r2,r3)

r5 <-cbind(r1,r2,r3)
r5[1,1]

#naming conventions with colnames and rownames
Charlie <- 1:5

names(Charlie) <- c("a","b","c","d","e")
names(Charlie)
Charlie
Charlie["d"]
#clearn names 

names(Charlie) <- NULL
Charlie




# Matrix col names and row names 
temp.vc <- rep(c("a","b","zZ"),each=3)


Barvo <- matrix(temp.vc,3,3)


rownames(Barvo) <-c("How","Are","you")
colnames(Barvo) <- c("x","y","z")

Barvo["Are","y"]

Barvo[2,2]

Barvo["Are",2]

Barvo[2,"y"]

#matrix operations

Games

Games ["KobeBryant","2005"]

Goals.games <- round(FieldGoals/Games,1)

round(MinutesPlayed/Games,1)

?matplot


matplot(FieldGoals)

#transpose of  a matrix
t(FieldGoals)

matplot(t(FieldGoals),type='b',pch=15:18,col=c(1:4,6))


#subsetting in R
 v1 <- c(1:5)
 v1[2:4]
 Games[1:5,6:10]
 Games[c(1,10),c(4,5)]
 is.matrix(Games[,c(4,5)])
Games[1,,drop=FALSE]
is.matrix(Games[1,drop=FALSE])
is.vector


t(MinutesPlayed[c(1:3),])

t(MinutesPlayed[1,,drop=FALSE])

#Functions in R
#assigning function in R and default value in R
topmostplayer <-function(rows=c(1:10),columns=c(1:10)){
  if  (length(columns)  >1   & length(rows)>1){
  
   t(MinutesPlayed[rows,columns])
  }
  else
  {
    t(MinutesPlayed[rows,columns,drop=FALSE])
    
  }
  
}


topmostplayer(1:2,)

#matplotlib visalization

myplot <- function(data,rows=c(1:10)){
  Data <- data[rows,,drop=FALSE]
  matplot(t(Data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend = Players[rows],col=c(1:4,6),pch=15:18,horiz = FALSE)
}
  myplot(Games)
  
  
  




