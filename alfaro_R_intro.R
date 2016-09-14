setwd(Users/maxmurray/GitHub/bootcamp-2016)
setwd("/Users/maxmurray/GitHub/bootcamp-2016")
getwd()
?lm
## Annette Dobson (1990) "An Introduction to Generalized Linear Models".
## Page 9: Plant Weight Data.
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)
lm.D90 <- lm(weight ~ group - 1) # omitting intercept

anova(lm.D9)
summary(lm.D90)

opar <- par(mfrow = c(2,2), oma = c(0, 0, 1.1, 0))
plot(lm.D9, las = 1)      # Residuals, Fitted, ...
par(opar)
?str()
# this helps to tell the structure of things
?cat
ls()
?rm()
# removes specified objects from the environment
## the nuclear option rm(list = ls())
library(ape)
list.files()
tt <- read.tree("tree.tre")
str(tt)
attributes(tt)
tt$tip.label[1:10]
# ^ this lets us look at the details of the attribute tip.lable. of which we looked at the first 10
# head is a useful function from a data frame or vector 
head(tt$tip.label)
pruned.tree <- drop.tip(tt, tt$tip.label[1:7900])
plot(ladderize(pruned.tree), cex = 0.5)
xx <- 1
while(xx < 5) {xx <- xx+1;if(xx == 3) {break; }}
print(xx)
rm(xx)
