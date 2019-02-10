setwd('/Users/sunzhongyang/Desktop/IE7275/HW2/Problem 3/')

library('psych')
library('GPArotation')

Harman23.cor <-
structure(list(cov = structure(c(1, 0.846, 0.805, 0.859, 0.473, 
0.398, 0.301, 0.382, 0.846, 1, 0.881, 0.826, 0.376, 0.326, 0.277, 
0.415, 0.805, 0.881, 1, 0.801, 0.38, 0.319, 0.237, 0.345, 0.859, 
0.826, 0.801, 1, 0.436, 0.329, 0.327, 0.365, 0.473, 0.376, 0.38, 
0.436, 1, 0.762, 0.73, 0.629, 0.398, 0.326, 0.319, 0.329, 0.762, 
1, 0.583, 0.577, 0.301, 0.277, 0.237, 0.327, 0.73, 0.583, 1, 
0.539, 0.382, 0.415, 0.345, 0.365, 0.629, 0.577, 0.539, 1), .Dim = c(8, 
8), .Dimnames = list(c("height", "arm.span", "forearm", "lower.leg", 
"weight", "bitro.diameter", "chest.girth", "chest.width"), c("height", 
"arm.span", "forearm", "lower.leg", "weight", "bitro.diameter", 
"chest.girth", "chest.width"))), center = c(0, 0, 0, 0, 0, 0, 
0, 0), n.obs = 305), .Names = c("cov", "center", "n.obs"))

#question 1
png(file = '1.Parallel Analysis Scree Plots.png', width = 1000, height = 750)
fa.parallel(Harman23.cor$cov,n.obs = 305,fa = 'both', n.iter = 100)
dev.off()

#question 2
fa <- fa(Harman23.cor$cov, nfactors = 2, n.obs = 305, rotate = 'none', fm = 'pa')

#question 3
fa.var <- fa(Harman23.cor$cov, nfactors = 2, n.obs = 305, rotate = 'varimax', fm = 'pa')
fa.pro <- fa(Harman23.cor$cov, nfactors = 2, n.obs = 305, rotate = 'promax', fm = 'pa')

#question 4
fa$weights

#question 5
png(file = '5.Factor Analysis.png', width = 1000, height = 750)
factor.plot(fa.pro,labels=rownames(fa.var$loadings))
dev.off()

#question 6
png(file = '6.Factor Analysis.png', width = 1000, height = 750)
fa.diagram(fa.pro,sample=FALSE)
dev.off()