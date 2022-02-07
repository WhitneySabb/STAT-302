# Author: Sabb, Date: Feb 2 2022, Purpose: Generate Different Types of Plots Using gglot Library

data <- read.csv("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar\\national-history.csv")

# Make a bar plot using library ggplot
library(ggplot2)

# Selecting first 10 rows of data and storing as new data frame data2
data2 <- data[1:10,]

# PLotting on data2
ggplot(data=data2, aes(x=death, y=onVentilatorCurrently)) + geom_bar(stat="identity")

# Try omiting na from dataframe
data3 <- na.omit(data)

# Plotting on data3
ggplot(data=data3, aes(x=death, y=onVentilatorCurrently)) + geom_bar(stat="identity")
