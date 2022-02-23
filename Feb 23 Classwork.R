# Author: Sabb, Date: Feb 23 2022, Purpose: Classwork Assignment

# Read the csv file in R
data <- read.csv("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar\\ddf--entities--geo--country.csv",header = TRUE)

data$country = as.numeric(as.factor(data$country))
country <- data$country
latitude <- data$latitude
df <- cbind(country,latitude)
df <- na.omit(df)

# Perform the Correlation Analysis between "iso3166_1_numeric" and "latitude” using library(ggpubr), generate plot and save
library(ggpubr)
ggscatter(data, x = "iso3166_1_numeric" , y = "latitude" , add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson")

# Using library RColorBrewer for generating heatmap for columns latitude and country
library("RColorBrewer")
col<-colorRampPalette(brewer.pal(10,"RdYlBu"))(256)
heatmap(df, scale = "none", col = col)

# Using library("pheatmap") for generating heatmap for columns latitude and country
library("pheatmap")
pheatmap(df,cutree_rows = 4)


