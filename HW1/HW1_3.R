setwd("/Users/sunzhongyang/Desktop/R")

data <- read.csv("raw_data.csv")

#a
Ndata <- scale(data)

#b

png(file = "Original Form.png", width = 1920, height = 1080)
boxplot(data, main = "Original Form")
dev.off()

#c

png(file = "Standardized Form.png", width = 1920, height = 1080)
boxplot(Ndata, main = "Standardized Form")
dev.off()

#e
png(file = "Scatter Plot with A and B.png", width = 1080, height = 1080)
plot(Ndata[,1], Ndata[,2], main = "Scatter Plot with A and B", xlab = "A", ylab = "B", pch = 3)
dev.off()
