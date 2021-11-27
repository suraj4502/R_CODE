main=datasets::quakes
head(main,10)
tail(main,6)


latandlong=main[,c(1,2)]


summary(main)

summary(main$mag)

#now plotting
plot(main,main='summary')
#a plot that shows relationshpip between stations and magnitude
plot(main$stations,main$mag,main = 'stations vs magnitude',col='red',xlab = 'stations',ylab = 'magnitude')


#horizontal bar plot
barplot(main$stations,main$mag,main = 'stations vs magnitude',col='red',xlab = 'stations',ylab = 'magnitude',
        horiz = T,axes = T)


#histogram
hist(main$depth,main = 'DEPTH',col = 'cyan')

#Histogram can only take one variable
hist(main$lat,main = 'latitute')

#Boxplot
boxplot(main$mag,main = 'Magnitude DATA',col = 'pink')
boxplot.stats(main$mag)$out

boxplot(main[3:5],main = 'multiple boxplots',col='yellow')


par(mfrow=c(3,3),mar=c(3,4,2,1),  las=0, bty="o")
plot(main$lat,col = 'red')
hist(main$mag,col = 'cyan')
boxplot(main$depth,col = 'yellow')
barplot(main$lat,col = 'red')
hist(main$mag)
plot(main$long,main$mag,col = 'grey')
plot(main$lat,col = 'red')
hist(main$mag,col = 'cyan')
boxplot(main$depth,col = 'yellow')



#to equate standard deviation
sd(main$depth)
sd(main$mag, na.rm = T)

#TO equate variance
var(main$depth)

#to equate skewness 
## 
skewness(main$mag)

#to equate kurtosis
#peakedness
kurtosis(main$mag)
