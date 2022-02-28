# Author: Sabb, Date: Feb 28 2022, Purpose: Classwork Assignment Answers

# Read the csv file in R
data <- read.csv("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar\\ddf--entities--geo--country.csv",header = TRUE)

# Subselect the 2 columns
data2 <- data[,c(8,11)]

# Get rid of NA values
data2 <- na.omit(data2)

# Perform the Correlation Analysis between "iso3166_1_numeric" and "latitude” using library(ggpubr), generate plot and save
library(ggpubr)
ggscatter(data, x = "iso3166_1_numeric" , y = "latitude" , add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson")

data3 <- data[,c(1,8,11)]
data3 <- na.omit(data3)
row.names(data3) <- data3[,1]
data3 <- data3[,-1]

# Scale data
df <- scale(data3)

# Using library RColorBrewer for generating heatmap for columns latitude and country
library("RColorBrewer")

# Generate a Color Palette
col <- colorRampPalette(brewer.pal(10,"RdYlBu"))(256)

# Use function Heatmap
heatmap(df, scale = "none", col = col)

# Using library("pheatmap") for generating heatmap for columns latitude and country
library("pheatmap")
pheatmap(df,cutree_rows = 4,fontsize_row=1)
