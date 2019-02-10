setwd('/Users/sunzhongyang/Desktop/IE7275/HW2/Problem 2/')

library('psych')
library('gdata')

glass <- read.xls('Glass Identification Data.xlsx', sheet = 1)
glass <- glass[, -c(1, 11)]

#question 1
png(file = '1.Parallel Analysis Scree Plots.png', width = 1000, height = 750)
fa.parallel(glass, n.iter = 100, fa='both', show.legend = TRUE)
dev.off()

#question 2
pcglass <- principal(glass, nfactors = 4)

#question 3
pcglass <- principal(glass, nfactors = 4, rotate ="varimax")

#question 4
pcglass <- principal(glass, nfactors = 4, scores = TRUE)
head(pcglass$scores)

#question 5
png(file = '5.Principal Components Analysis.png', width = 1000, height = 750)
pcglass <- principal(glass, nfactors = 4, rotate = 'promax')
factor.plot(pcglass, labels = rownames(pcglass$loadings))
dev.off()