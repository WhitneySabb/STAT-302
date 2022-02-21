# Author: Sabb, Date: Feb 21 2022, Purpose: To Generate Heatmaps Using 3 Different Libraries

# Using library RColorBrewer for generating heatmap
library("RColorBrewer")

# Load a sample data called "mtcars"
df <- mtcars
df <- scale(df)

col<-colorRampPalette(brewer.pal(10,"RdYlBu"))(256)
heatmap(df, scale = "none", col = col, RowSideColors = rep(c("blue","pink"), each = 16), ColSideColors = c(rep("purple",5),rep("orange",6)))

#Remove Dendrogram
heatmap(df, scale = "none", col = col, RowSideColors = rep(c("blue","pink"), each = 16), ColSideColors = c(rep("purple",5),rep("orange",6)),Colv=NA, Rowv=NA)

# Use gplots Library to Generate Heatmaps
install.packages('gplots')
library("gplots")
heatmap.2(df,scale="none", col=bluered(100),trace="none",density.info="none")

# Use pheatmap Library to Generate Heatmaps
install.packages("pheatmap")
library("pheatmap")
pheatmap(df,cutree_rows = 4)