quakes<-datasets::quakes

head(quakes,10)
tail(quakes,10)

quakes[50:60,c(1,2)]

df<-quakes(,-5)

summary(quakes)
summary(quakes$lat)
summary(quakes$long)
summary(quakes$depth)
summary(quakes$mag)
summary(quakes$stations)

plot(quakes)
plot(quakes$lat)
plot(quakes$long)
plot(quakes$depth)

plot(quakes$lat,type = 'l')
plot(quakes$long,type = 'p')
plot(quakes$depth,type = 'b')

plot(quakes$lat, xlab = 'lattitude', 
     ylab = 'No of Instances', main = 'earthquakes in maharashtra',
     col = 'blue',type='l')

barplot(quakes$depth, main = 'depth levels of centre',
        ylab = 'depth levels', col= 'green',horiz = F,axes=T)

hist(quakes$stations)
hist(quakes$mag,main = 'magnitude of earthquakes',ylab = 'magnitude',col = 'blue',xlab = 'time')

boxplot(quakes$depth, main='depth')
boxplot(quakes)
boxplot.stats(quakes$lat)$out

boxplot(quakes[,2:4])


par(mfrow=c(3,3),mar=c(2,4,2,1),  las=0, bty="o")



sd(quakes$depth,na.rm = F)

