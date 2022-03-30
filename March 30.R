# Author: Sabb, Date: March 30, Purpose: To Generate Normal Distribution Plot for Dummy Data

# Generate Dummy Data
x <- seq(-10, 10, by = .1)

# Use dnorm() wiht some mean and standard deviation values
y <- dnorm(x, mean = 2.5, sd = 1)

# Plot x and y to generate plot for normal distribution curve
plot(x,y, col="blue")

# Add a legend
legend("topleft", legend=c("Dummy Data"), col=c("blue"), pch=1, cex=0.8)