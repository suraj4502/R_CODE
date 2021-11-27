#we are loading the builtin dataset but to use another dataset we can use the following code
#variable_name=read.csv('path of the dataset')
md=datasets::iris

#checking first and last elements
head(md,10)
tail(md,8)


#the datasets has 150 rows and 5 columns
md1=md[,c(1,3)]
#the above variable has only sepal and petal length
md2=md[,c(2,4)]
#the above dataframe has only sepal and petal width
md3=md$Species


#now we find the mean,median,and parameters using summmary function
summary(md)
#now only for sepal length
summary(md$Sepal.Length)
#now only for petal width
summary(md$Petal.Width)

#now we'll find skewness and kurtosis for that we have to use moments package
skewness(md$Sepal.Length)#degree of asymettry
kurtosis(md$Sepal.Length)#degree of peakedness
skewness(md$Petal.Width)
kurtosis(md$Petal.Width)


#now we will visualize
plot(md,col = 'gold')
hist(md$Petal.Width)

plot(md$Sepal.Length,md$Petal.Length,main = 'Sepal lenth vs petal length',
     col = 'cyan',xlab = 'Sepal length', ylab = 'petal length')

barplot(md$Sepal.Length,main = 'bar plot of sepal length',xlab = 'sepal lenth',col = 'red')

plot(md$Sepal.Width,type = 'p',col = 'green',xlab = 'Sepal Width')

boxplot(md$Petal.Width,main = 'petal width in Box plot',col ='pink' )
#we dont have any outliers in peatal width 
#if we had then we can use the following code to know about them
#boxplot.stats(md$Petal.Width)$out

boxplot(md[1:5], main = 'multiple box plots',col = 'violet')


# now we'll arrange many visualtions in one single page
par(mfrow = c(2,2),bg = 'beige',bty = 'o',mar = c(4,3,3,1))
hist(md$Petal.Width,main = 'Petal width', col = 'pink',xlab = 'Petal width')
plot(md$Sepal.Length,md$Petal.Length,main = 'Sepal lenth vs petal length',
     col = 'pink',xlab = 'Sepal length', ylab = 'petal length')
barplot(md$Sepal.Length,main = 'bar plot of sepal length',xlab = 'sepal lenth',col = 'pink')
boxplot(md$Petal.Width,main = 'petal width in Box plot',col ='pink' )

#I'll add the image of the output of the above please check it out 

