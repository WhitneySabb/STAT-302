# Author: Sabb, Date: Mar 9 2022, Purpose: Multiple Regression in R

data <- read.csv("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar\\national-history.csv")
relation <- lm(data$death~data$hospitalizedIncrease)
summary(relation)

# What will happen to the number of deaths, if the hospitalized patients are say 1000 for next motnh?

# Create Data Frame "A"
A <-as.data.frame(x=1000)
result <- predict(relation, newdata = A)

# Below We Created a Multiple Regression

relation <- lm(data$death~data$hospitalizedIncrease+data$onVentilatorCumulative+data$positiveIncrease, data)