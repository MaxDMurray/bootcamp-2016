### Plotting exercise
rm(list=ls())

get_heights <- function(x) {
  heights <- rnorm(x,69,10)
  return(mean(heights))
}


mean_heights_100 <- rep(0,100)
for(i in 1:1000){
  mean_heights_100[i] <- get_heights(100)
}

mean_heights_1000 <- rep(0,1000)
for(i in 1:1000){
  mean_heights_1000[i] <- get_heights(1000)
}

bins <- seq(65,73,by=1)
counts_100 <- hist(mean_heights_100, breaks=bins)$counts
counts_1000 <- hist(mean_heights_1000, breaks=bins)$counts
barplot(rbind(counts_100,counts_1000), col=c(2,4), beside=T, names.arg = seq(65,72,by=1), xlab = "Average Height (inches)", ylab = "Count")
legend('topleft', c('n=100', 'n=1000'), col=c(2,4),lwd = 4)

