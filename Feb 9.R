# Author: Sabb, Date: Feb 9 2022, Purpose: Performing Correlation Analysis on National COVID Dataset

data <- read.csv("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar\\national-history.csv")

# From Last Class
library(corrplot)

data2 <- data[1:20,]
datamatrix <- data2[,2:5]
datamatrix<-as.matrix(datamatrix)
res<-cor(datamatrix)
corrplot(res, type = "upper", order = "hclust", tl.col = "black", tl.srt = 45)

install.packages("PerformanceAnalytics")
library("PerformanceAnalytics")
chart.Correlation(res, histogram=TRUE, pch=19)