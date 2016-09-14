?norm
rnorm(1)
s1 <- rnorm(1000, mean = 0, sd = 1)
s3 <- rnorm(1000, mean = 0, sd = 3)
head(s1)
head(s3)

#plot histograms of both on same panel and save to a file:

pdf(file="Normal_hist.pdf", width=4,height=7)

hist(s1)
hist(s1, col = 1)
hist(s1, col = 2)
hist(s1, col = 3)
hist(s1, col = 4)
par(mfrow=c(2,1), mar=c(4, 4, 3, 2)) #sets plotting area and margins
dev.off()
?lines
?points
