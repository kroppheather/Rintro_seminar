##############################################################
##################This script provides examples for   ########
##################an introduction to R basic concepts ########
##############################################################


#Assign a variable
Ex<-6
#look at variable
Ex
#use the variable 
Ex*5

#set up a vector
Vec<-c(3,4,5,2,10,4,6)
#subset the vector by the first two elements
Vec[1:2]

#set up a matrix
Mat<-matrix(c(1,2,3,4,5,6), ncol=2, byrow=TRUE)
Mat
#set up a matrix that fills in by columns
Mat.bycol<-matrix(c(1,2,3,4,5,6), ncol=2, byrow=FALSE)
Mat.bycol

#calculate the average value of Vec
mean(Vec)
#specify arguments by name and not order
mean(na.rm=TRUE,x=Vec)

# multiply matrix by vector
Mat.scale<-matrix(c(2,2,2,3,3,3), ncol=2,byrow=TRUE)
Mat*Mat.scale

#multiply vector by 5
Vec*5


#data types
#note there are different types of data
#and here's what they look like

#numeric
N.ex<-14/15
N.ex
#character
C.ex<-c("December")
C.ex
#Factor
F.ex<-as.factor("a")
F.ex

#set working directory 
#this is the file path for where your file is saved
#make sure you put the file in quotes
#you will have to change the path below
setwd("c:\\Users\\hkropp\\Google Drive\\R_start")
#check what your working directory is set at
getwd()

#read in data file
datM<-read.csv("mountain_data.csv")
#check out data
datM


#get dimensions of the dataset
dim(datM)
#Note output is a vector of 2 values
#we can name this and refer to later
Mdim<-dim(datM)

#get the column names
names(datM)


#look at the names and first 5 rows
head(datM)
tail(datM)

#look at only the name columne
#refer to a column in a data frmae
#dataframename$column.name
datM$Name

#look at name in second column
datM[,2]

#refer to multiple columns
datM[,2:4]

#refer to several rows
datM[1:3,]



#make a data frame 
M.ft<-data.frame(Rank=datM$Rank, Elev=datM$Elev.ft)
M.ft

#subset all of the tallest mountains in the US
US.M<-datM[datM$Region=="US",]


#subset by mountains above 20,000 ft
High.M<-datM[datM$Elev.ft>20000,]
High.M


#look at difference between prominance and elevation
High.M$Elev.ft-US.M$Prom.ft
#oops, you should see a warning message
#this is using mismatched vectors!!!

#here is the correct code
High.M$Elev.ft-High.M$Prom.ft


#######################################################
###########Complete the following:          ###########  
#######################################################

##################

#1. Find out how many mountains are located in Canada

##################

#2. Look up the plot function by running help(plot).
#   using the help guidelines, make a plot that shows
#   elevation in the x axis and prominance in the y axis

##################

#3. What is the average height of the tallest mountains in the US?

