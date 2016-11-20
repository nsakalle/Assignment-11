# Assignment 11
Nimish Sakalle  
NOvember 20, 2016  

## Introduction

This is time series analysis on the UK car production fom the year 1977. The idea is to analyze data to observe any seasonal impact on car procuction. This example also look at the outlier the may impact seasonal change.
Below code is doing following analysis.

a)	Plot the time series. Can you identify seasonal fluctuations and/or a trend? 
b)	Use a classical decomposition to calculate the trend-cycle and seasonal indices. 
c)	Do the results support the graphical interpretation from part (a)? 
d)	Compute and plot the seasonally adjusted data. 
e)	Change one observation to be an outlier (e.g., add 500 to one observation), and recompute the seasonally adjusted data.
    What is the effect of the outlier? 
f)	Does it make any difference if the outlier is near the end rather than in the middle of the time series? 
g)	Use STL to decompose the series. 



```r
## The first step is to load R libraries that are required for the analysis.

library(plyr)
library(knitr)
library(fpp)
```

```
## Warning: package 'fpp' was built under R version 3.3.2
```

```
## Loading required package: forecast
```

```
## Warning: package 'forecast' was built under R version 3.3.2
```

```
## Loading required package: zoo
```

```
## 
## Attaching package: 'zoo'
```

```
## The following objects are masked from 'package:base':
## 
##     as.Date, as.Date.numeric
```

```
## Loading required package: timeDate
```

```
## Warning: package 'timeDate' was built under R version 3.3.2
```

```
## This is forecast 7.3
```

```
## Loading required package: fma
```

```
## Warning: package 'fma' was built under R version 3.3.2
```

```
## Loading required package: tseries
```

```
## Warning: package 'tseries' was built under R version 3.3.2
```

```
## 
## Attaching package: 'fma'
```

```
## The following object is masked from 'package:plyr':
## 
##     ozone
```

```
## Loading required package: expsmooth
```

```
## Warning: package 'expsmooth' was built under R version 3.3.2
```

```
## Loading required package: lmtest
```

###** Making environment ready**


###** by looking closly at the graph, looks like peak in car production every year.

```
##  Time-Series [1:113] from 1977 to 2005: 330 371 271 344 358 ...
```

```
## NULL
```

![](Assignment_11_files/figure-html/unnamed-chunk-2-1.png)<!-- -->


###** Seasonal trend decomposition.
### by looking at the observed valueits very clear that there is peak in car production in particular season every year and 
### consistently repeated in the data set from 1977 to 2005.

![](Assignment_11_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

### Seasonal trend decomposition, using STL.
### STL function first determines the trend component using a moving average.
![](Assignment_11_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

### seasonally adjusted data constructed by removing the seasonal component.
![](Assignment_11_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

### Adding outlier to the dataset, in middle, start and end

![](Assignment_11_files/figure-html/unnamed-chunk-6-1.png)<!-- -->![](Assignment_11_files/figure-html/unnamed-chunk-6-2.png)<!-- -->
### It does make a difference, when the graph is in middle, its looks like a spike in car sales.
### This could be due to any reason. But outlier in the end study. 
###** Seasonal trend decomposition. With data with outlier
![](Assignment_11_files/figure-html/unnamed-chunk-7-1.png)<!-- -->![](Assignment_11_files/figure-html/unnamed-chunk-7-2.png)<!-- -->

### seasonally adjusted data constructed by removing the seasonal component on data with outlier
![](Assignment_11_files/figure-html/unnamed-chunk-8-1.png)<!-- -->![](Assignment_11_files/figure-html/unnamed-chunk-8-2.png)<!-- -->

### data with STL trend.
![](Assignment_11_files/figure-html/unnamed-chunk-9-1.png)<!-- -->

