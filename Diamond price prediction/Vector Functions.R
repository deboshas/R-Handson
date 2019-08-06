rnorm
c
seq
rep
print
is.character("a")
is.numeric(34)
is.bool(True)
sqrt()
paste
typeof()
#help on funcitons
?paste

#hands on
 x <- seq(1,50,2)
 y <- rep("Hi there",20)
 z <- paste(x,y)
 print(z)
 
 #1000 numbers between 10 and 20
 a <- seq(10,20,length.out = 1000)
print(a) 

#replicate a vecotr multiple times
s <- rep(1:15,times=10)
print (s)

#replicate each value in vector muktiple times
v <-rep(1:15,each=5)
print (v)


#sqrt of a vecotr using sqrt
sqrt <-sqrt(s)
print(sqrt)
