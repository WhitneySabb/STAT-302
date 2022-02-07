# Author: Sabb, Date: Feb 7 2022, Purpose: Performing Correlation Analysis on National COVID Dataset

data <- read.csv("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar\\national-history.csv")

# Make a bar plot using library ggplot
library(ggplot2)

# Perform the correlation analysis between "states and "death"
library(gglot2)
library(ggpubr)

ggscatter(data, x = "states" , y = "death" , add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "States", ylab = "Number of Deaths")

#Remove Scientific Notation
options(scipen=999)
ggscatter(data, x = "states" , y = "death" , add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "States", ylab = "Number of Deaths")
