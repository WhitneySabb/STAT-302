# Author: Sabb, Date: Mar 2 2022, Purpose: To Generate Pie Charts and Volcano Plot

# Create a list of elements called "slices" as follows
slices <- c(10, 12, 4, 16, 8)

# Create a list of labels called "labels" as follows
labels <- c("US", "UK", "Australia", "Germany", "France")

# Following is function to generate a pie chart
pie(slices, labels = labels, main = "Pie Chart of Countries", angle = 45, clockwise = FALSE)

# Make Volcano Plot: It is usually used in gene expression analysis to find significant/important geners in your samples. And it is usually columns: A p value and log fold change

# Read the rds file in R
tmp <- readRDS("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar\\de_df_for_volcano.rds")

# Convert to complete cases as follow:
de <- tmp[complete.cases(tmp),]

# Following to generate a volcano plot
library(ggpubr)
ggplot(data=de,aes(x=log2FoldChange, y=pvalue)) + geom_point()