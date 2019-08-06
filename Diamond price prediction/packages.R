install.packages("ggplot2")


#activate  or attach  a package before using it and after installing it
library(ggplot2)

?qplot()
?ggplot()
?diamonds


qplot(data=diamonds,x=carat,y=price,colour=clarity)
