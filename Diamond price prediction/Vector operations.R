x <- c(10,20,30,40,45)
y <-c(1,2,3,4) #repeat the vector until it matches the x vector
z <- x+y
s <- x-y
logicalvector <- x > y
multiplicationvector <- x * 10


#operations

randomvector<- rnorm(5)

#R specific iteration, i is a  vector 
for ( i in randomvector){
  print(i)
}
#
# print(randomvector[1])
# print(randomvector[2])
# print(randomvector[3])
# print(randomvector[4])
# print(randomvector[5])

#convential programming
for (j in 1:5){
  print(randomvector[j])
  
  
}


#--------------------------------#


N<- 10000000
a<- rnorm(N)
b <- rnorm(N)

#multiplication in R way shorther tha traditiona way,and faster than traditioanl way
c <- a *b

d <- rep(NA,N)

#Multiplication in traditional way,takes more code to and takes more time than R way
for( i in 1:N){
  d[i]=a[i]*b[i]
}


