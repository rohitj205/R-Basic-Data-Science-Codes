# Title     : IRIS DATA SET
# Objective : E D A & Data Visualization
# Created by: Rohit Jagadish
# Created on: 9/5/2020

#Iris Data Set

datasets::iris #importing iris dataset which is in-built in CRAN

data(iris) #loading the DataSet

?iris #using this "?" before a dataset, gives you details about the DataSet

head(iris) #First Five Rows of the Data

tail(iris) #Last Five Rows of the Data

dim(iris) #Dimensions of the DataFrame

names(iris) #Names of columns

str(iris) #Structure of the Data

attributes(iris) #Attributes of the Data

is.na(iris) #checkig missing data

table(is.na(iris)) #Simplifying

summary(iris) #Descriptive statistical Summary of Data

iris[1:5,] #Indexing First 5 rows of the Data

iris[,1:4] #Indexing First 5 columns of the Data

#If you want to explore the first 10 rows of a particular column,
# in this case, Sepal length

iris[1:10,"Sepal.Length"]

#Basic Visualization with R , Using Plot

plot(iris)

#HISTOGRAM.

#Histogram is basically a plot that breaks the data into
#bins (or breaks) and shows frequency distribution of
# these bins. You can change the breaks
# also and see the effect it has data visualization in
# terms of understandability (1).

#Histogram with hist() function
sepal_length <- iris$Sepal.Length #Assigning Variable
hist(sepal_length) #Used Hist Function

#If we add more information in the hist() function,
#we can change some default parameters

hist(sepal_length,main = "Histogram of Sepal Length",xlab = "Sepal Length"
,xlim =c(4,8),col = 'blue',freq = FALSE)

sepal_width <- iris$Sepal.Width
hist(sepal_width,main = "Histogram of Sepal Length",xlab = "Sepal Width"
,xlim = c(2,5),col = 'red',freq = FALSE)


plot(iris$Sepal.Length,iris$Petal.Length)

plot(iris$Sepal.Width,iris$Petal.Width)

plot(iris$Sepal.Width,iris$Petal.Width,col=iris$Species)

#"Boxplots with boxplot() function. The boxplot() function takes in any number of numeric vectors, drawing
#a boxplot for each vector.You can also pass in a list (or data frame) with numeric vectors
#as its components (3).

irisVer <- subset(iris, Species == "versicolor")
irisSet <- subset(iris, Species == "setosa")
irisVir <- subset(iris, Species == "virginica")
par(mfrow=c(1,3),mar=c(6,3,2,1))
boxplot(irisVer[,1:4], main="Versicolor, Rainbow Palette",ylim = c(0,8),las=2, col=rainbow(4))
boxplot(irisSet[,1:4], main="Setosa, Heat color Palette",ylim = c(0,8),las=2, col=heat.colors(4))
boxplot(irisVir[,1:4], main="Virginica, Topo colors Palette",ylim = c(0,8),las=2, col=topo.colors(4))