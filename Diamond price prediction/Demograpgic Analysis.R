



#Importing data set------------------------------------------------------------------
#Set theworkign directory and get teh files from there
setwd("E:\R Programming\Diamond price prediction")
#Import a demographic dataset

demographic.data <- read.csv("Demographic-Data.csv")

# Exploriring data set --------------------------------------------------------------

#functions
nrow(demographic.data)
ncol(demographic.data)
head(demographic.data,n=10)#Top 10 rows in csv
tail(demographic.data,n=10)# Bottom 6 rows csv
str(demographic.data) #strucure of the  data set
#runif()
summary(demographic.data)

#using $ sign-------------------------------------------------------------------------

demographic.data[3,"Birth.rate"]

demographic.data$Internet.users[190]
demographic.data$Birth.rate[150]
levels(demographic.data$Country.Code) # level the dataset using levels 

#Basic operations---------------------------------------------------------------------
#subsettinghead

head(demographic.data,n=10)
demographic.data[1:10,]#first 10 rows
demographic.data[3:9,]#row from 3 rd to 9 th

demographic.data[c(4,100),]

#Remeber how  square brackest works
#it stays as a  dataframe unlike Matrix
demographic.data[1,]
demographic.data[,1]
#is.data.frame(demographic.data[,1,drop=FALSE])
demographic.data[,1,drop=FALSE]
#Multiplication in data frame
demographic.data$Birth.rate * demographic.data$Internet.users
#Add a computed columns

demographic.data$Multiplication <- demographic.data$Birth.rate * demographic.data$Internet.users

demographic.data[c(1:10),]

demographic.data$xyz <- 1:4
head(demographic.data)

#remove a column

demographic.data$xyz <- NULL

#Filtering a data frame--------------------------------------------------------------------------------------------------

filterInternetUsers <- demographic.data$Internet.users < 2
demographic.data[filterInternetUsers,]
demographic.data[demographic.data$Birth.rate >40,]

demographic.data[demographic.data$Birth.rate >40 & demographic.data$Internet.users <2,]

demographic.data[demographic.data$Income.Group=='High income',]
levels(demographic.data$Income.Group)

demographic.data[demographic.data$Country.Name=='Malta',]

#Intorduction to Visualizing  data with qplot---------------------------------------------------------------------------------------------



qplot(data=demographic.data,x=Income.Group,y=Birth.rate)

qplot(data=demographic.data,x=Income.Group,y=Birth.rate,size=I(10),color=I("blue"))

qplot(data=demographic.data,x=Income.Group,y=Birth.rate,geom = "boxplot")

#Visualizing  data with qplot case study-----------------------------------------------------------------------------------


qplot(data=demographic.data,x=Birth.rate,y=Internet.users,size=I(5),color=Income.Group)

#Building a dataframe---------------------------------------------------------------------------------------------------------

#Execute below code to generate three new vectors
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")

#region.data  <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)

#colnames(region.data) <- c("Country","Code","Region")


rm(region.data)

region.data <- data.frame(Country=Countries_2012_Dataset,Code=Codes_2012_Dataset,Regions=Regions_2012_Dataset)

head(region.data)
summary(region.data)
str(region.data)

#Merging two data frames----------------------------------------------------------------------------------------------------------

head(demographic.data)
head(region.data)

combined.data <- merge(demographic.data,region.data,by.x ="Country.Code",by.y ="Code" )
combined.data$Country <- NULL #Remove Redundant column Country from merged data frame
head(combined.data)

#Visualizing category scatter plot data with respect to regions as category 

str(combined.data)
qplot(data=combined.data,x=Internet.users,y=Birth.rate,size=I(5),color=Regions)
#shapes
qplot(data=combined.data,x=Internet.users,y=Birth.rate,size=I(5),color=Regions,shape=I(23))
#Transparancy
qplot(data=combined.data,x=Internet.users,y=Birth.rate,size=I(5),color=Regions,shape=I(19),alpha=I(0.6))

#Title


qplot(data=combined.data,x=Internet.users,y=Birth.rate,size=I(5),color=Regions,
      shape=I(19),alpha=I(0.6),main = "Birth Rate vs Internet Users")





