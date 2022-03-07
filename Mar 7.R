# Author: Sabb, Date: Mar 7 2022, Purpose: Linear Regression in R

data <- read.csv("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar\\national-history.csv")

relation <- lm(data$death~data$hospitalizedIncrease)

summary(relation)

# Although regression and correlation both look at relationship, only regression can make future predictions.

# Plot Regression relationship
plot(data$death, data$hospitalizedIncrease, col = "blue", main = "Deaths & Patients Hospitalized Regression", abline(lm(data$hospitalizedIncrease~data$death)), cex =1.3, pch=16, xlab = "deaths", ylab= "Patientsn Hospitalized")

# Remove Scientific Notation
options(scipen=100)