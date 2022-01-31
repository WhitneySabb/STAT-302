# Author: Sabb, Date: Jan 31 2022, Purpose: Analyze National COVID dataset

data <- read.csv("C:\\Users\\wsabb\\OneDrive\\Documents\\Spring 2022\\Probability and Statistics 2 - Pawar\\national-history.csv")

# Plotting with ggplot2

# Create a scatter plot on "death" & "onVentilatorCurrently" in R without using any external library
plot(data$death, data$onVentilatorCurrently)

# Change axis labels: X axis "Number of Deaths", Y axis "Patients on Ventilator"
plot(data$death, data$onVentilatorCurrently, xlab="Number of Deaths", ylab="Patients on Ventilator")

# Remove scientific notation and replot X scale
options(scipen=999)
plot(data$death, data$onVentilatorCurrently, xlab="Number of Deaths", ylab="Patients on Ventilator")

# Create a scatter plot using external library ggplot2
library(ggplot2)
ggplot(data,aes(death,onVentilatorCurrently,colour=states))+geom_point()