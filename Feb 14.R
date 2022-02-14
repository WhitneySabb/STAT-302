# Author: Sabb, Date: Feb 14 2022, Purpose: To Generate Heatmaps on Some Sample Datasets

# Load a sample data called "mtcars"
df <- mtcars

# Check first few lines of loaded data
head(df)
dim(df)

df<-scale(df)
# Create a heatmap using default R function
heatmap(df,scale="row")


# Create a heatmap using Mercs and Fiats
df2 <- df[grep("^Merc",row.names(df)),]
df3 <- df[grep("Fiat",row.names(df)),]
df4 <- rbind(df2,df3)
heatmap(df4,scale="row")
