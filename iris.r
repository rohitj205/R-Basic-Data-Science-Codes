# Title     : IRIS DATA SET
# Objective : E D A
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

summary(iris) #Descriptive statistical Summary of Data

iris[1:5,] #Indexing First 5 rows of the Data

iris[,1:4] #Indexing First 5 columns of the Data

#If you want to explore the first 10 rows of a particular column,
# in this case, Sepal length

iris[1:10,"Sepal.Length"]

#Basic Visualization with R , Using Plot

plot(iris)

#Histogram with hist() function
sepal_length <- iris$Sepal.Length #Assigning Variable

hist(sepal_length) #Used Hist Function

plot(iris$Sepal.Length,iris$Petal.Length)

plot(iris$Sepal.Width,iris$Petal.Width)

plot(iris$Sepal.Width,iris$Petal.Width,col=iris$Species)