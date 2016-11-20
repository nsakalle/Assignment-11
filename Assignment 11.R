
library(fpp) #fpp package must be installed first

data(ukcars)
str(ukcars)
names(ukcars)
plot(ukcars, main ="UK Time-Series from 1977 to 2005", xlab = "Year", ylab ="Cars in thousand" )
# By looking at the graph I can see increase in car production rate over the year and, 
# by looking closly at the graph, looks like peak in car production every year.


#Seasonal trend decomposition.
fitd <- decompose(ukcars)
plot(fitd)
# by looking at the observed valueits very clear that there is peak in car production in particular season every year and 
# consistently repeated in the data set from 1977 to 2005.

#Seasonal trend decomposition, using STL.
# STL function first determines the trend component using a moving average.
fit <- stl(ukcars, s.window=7)
plot(fit)

# seasonally adjusted data constructed by removing the seasonal component.
eeadj <- seasadj(fitd)
plot(eeadj)


# Adding outlier to the data.
ukcars2 <- ts(c(ukcars[1:54],ukcars[55]+200,ukcars[56:191]),start=c(1996,1),frequency=12)
plot(ukcars2)


plot(ukcars, col="gray",
     main="Electrical equipment manufacturing",
     ylab="New orders index", xlab="")
lines(fit$time.series[,2],col="red",ylab="Trend")