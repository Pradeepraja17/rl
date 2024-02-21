#Boxplot
us_cars<-read.csv("S:/ML_Dataset/usedcars.csv",stringsAsFactors = FALSE)
str(us_cars)
boxplot(us_cars$price,main="Used cars price",ylab="price($)",col="blue",border="red")
boxplot(us_cars$mileage,main="Used cars mileage",ylab="Odometer(mi..)",col="red",border="brown")
#boxplot(us_cars[0:6],main ='Used Cars')

#Bar Plot
barplot(us_cars$mileage,main = 'Used Cars',xlab = 'Mileage', horiz = FALSE,col='blue')

#Histogram
hist(us_cars$mileage, main ="Used Cars Mileage",xlab ="Mileage",col ="yellow",border="red")

#scatter plot 
plot(us_cars$price,us_cars$mileage,main ="Scatterplot ",xlab ="Price",ylab =" Mielage", pch = 12,col='green')

#pie
n=12
pie(rep(1,n), col=rainbow(n))
pie(rep(1,n),col=heat.colors(n))
pie(rep(1,n),col=terrain.colors(n))

#3D Graphs 
cone <- function(x, y){sqrt(x ^ 2 + y ^ 2)}

# prepare variables.
x <- y <- seq(-1, 1, length = 30)
z <- outer(x, y, cone)

# plot the 3D surface
# Adding Titles and Labeling Axes to Plot
persp(x, y, z,
      main="Perspective Plot of a Cone",
      zlab = "Height",
      theta = 30, phi = 15,
      col = "green", shade = 0.4)

