setwd("/Users/sunzhongyang/Desktop/R")

data_twitter_raw <- read.csv("M01_quasi_twitter.csv", header = TRUE)

#b
summary(data_twitter_raw$friends_count)

#d
library(scatterplot3d)

png(file = "3D scatter plot.png", width = 1920, height = 1080)
scatterplot3d(x=data_twitter_raw$created_at_year, y=data_twitter_raw$education, z=data_twitter_raw$age, main = "3D scatter plot", xlab = "year", ylab = "education",zlab = "age", pch = 20, angle = 55, highlight.3d=TRUE)
dev.off()

#e
library(plotrix)

lbs <- c("UK", "Canada", "India", "Australia", "US")
slices <- c(650, 1000, 900, 300, 14900 )

pct <- round(slices/sum(slices)*100)
lbs2 <- paste(lbs, " ", pct, "%", sep = "")

png(file = "Pie Chart with Percentages.png", width = 2600, height = 1080)

opar <- par(no.readonly = TRUE)
par(mfrow=c(1, 2))
pie(slices, labels = lbs2, col = rainbow(length(lbs2)), main = "Pie Chart with Percentages")
pie3D(slices, labels = lbs2)
par(opar)

dev.off()

#f
png(file = "kernal density plot.png", width = 1920, height = 1080)
plot(density(data_twitter_raw$created_at_year), main = "kernal density plot")
dev.off()