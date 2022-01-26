# Author: Sabb, Date: Jan 26 2022, Purpose: National COVID Dataset Link

# Set working directory to the file path
setwd("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar")

# Read the csv file in R
data <- read.csv("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar\\national-history.csv",header = TRUE)

# dim() Function checks the dimensions of your dataframe
dim(data)

# Check names of columns in the data frame
names(data)

# Example: Select 2 columns named "date" , "positive" and make a new data frame named data2
data2 <- data.frame(data$date, data$positive)

# Check the summary stats(mean, median, max, min, missing values/NA's) of your data
summary(data)

# Numerical Values: 0, 1, 2, ...
# Doubles/Floats: 0.0, 1.3, 2.867, ...
# Characters: A, B, C, ...
# Strings: ABCD, EFGH, ...

# Checking the data structure
is.data.frame(data)
is.matrix(data)

# Checking the data type
is.numeric(data)
is.numeric(data$death)

# Checking the missing values
is.na(data$death)

# Extract elements of summary output
df <- data.frame(unclass(summary(data)))
dim(df)
df[6,2]