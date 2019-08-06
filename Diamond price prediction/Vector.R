firstvector <- c(1,2,3,4,5,6,7,8,9,10)
is.numeric(firstvector)
is.integer(firstvector)
is.double(firstvector)


v2 <- c(12L,13L,15L)
is.integer(v2)
is.double(v2)

v3 <- c("a","ritu","hello")
is.character(v3)
is.numeric(v3)

v4 <- c(1,2,3,"ritu")
is.character(v4)

#seq ,rep ways to create vector
v5 <- seq(1,15)

#2 is step here
z <- seq(1,15,2)

#rep

repvector <- rep(3,50)

repvector


repcharvector <- rep("a",10)

x <-c(80,20)
repvector1 <- rep(x,10)
repvector1



# [] is not required in R,many times
repvector[2]
repvector[3]
repvector[4]
repvector[5]

#everything except value at position 3 
resultvector <- repvector1[-3]
repvector1[1:10]
repvector[-2:-10]


repvector[10000]
repvector[-1]


