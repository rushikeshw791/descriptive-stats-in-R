# airquality

airquality<-datasets::airquality


#top 10 rows and last 10 columns

head(airquality,10)
tail(airquality,10)

#columns
airquality[53:77,c(1,2)]

df<-airquality[,-6]

#discriptive stat

summary(airquality[,c(4,5)])

airquality$Ozone
airquality$Solar.R
airquality$Wind
airquality$Temp

#1
summary(airqaulity$wind)

summary(airquality)
summary(airquality$Wind)

#visulization
plot(airquality$Wind)

plot(airquality$Temp,airquality$Ozone,type="p")

plot(airquality)


#points and lines 

plot(airquality$Wind,type = "b") #p=point,l=lines,b=both

plot(airquality$Wind, xlab = 'ozone concentration', ylab = 'no of instances',main = 'ozone levels in pune city', col='blue',type = 'l')

#horizontal bar plot
barplot(airquality$Ozone,main = "ozone concentration in air",ylab = 'ozone levels', col = 'blue',horiz = F,axes = F)

#histogram
hist(airquality$Temp)

hist(airquality$Temp,main = 'solar radiation values in air',xlab = 'solar rad.', col = 'blue')

#single boxplot
boxplot(airquality$Wind)
boxplot.stats(airquality$Wind)$out

#multiple 
boxplot(airquality[,2:4],main='multiple')
