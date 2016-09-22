# Plotting and Statistics Exercise


rm(list = ls())



ChickWeight = ChickWeight
data <- ChickWeight
data <- within(data, {
  Chick <- factor(Chick)
  Diet <- factor(Diet)
  Time <- factor(Time)
})


data.t0 <- data[data$Time == 0, ]
boxplot(weight~Diet, data=data.t0, xlab = "Diet Type", ylab = "Weight", main = "Weights of Chicks on Day 0")


anova_1 = aov(weight~Diet, data = data.t0)
summary(anova_1)
TukeyHSD(anova_1)






data.t21 <- data[data$Time == 21, ]
boxplot(weight~Diet, data = data.t21, xlab = "Diet Type", ylab= "Weight", main = "Weight of Chicks on Day 21")

anova_2 = aov(weight~Diet, data = data.t21)
summary(anova_2)
TukeyHSD(anova_2)





plot(as.numeric(data$Time), data$weight, pch = 19)

cols = sub('1', "hotpink", data$Diet)
cols = sub('1', "plum", cols)
cols = sub('3', "cornflowerblue", cols)
cols = sub('4', "purple", cols)

plot(as.numeric(data$Time), data$weight, xlab = "Time", ylab = "Weight", main = "Effect of Diet on Chick Weight", 
     col = cols, pch = 16, las = 1, cex.axis = 1.5, cex.lab = 1.5)

plot(NA,ylim = c(0,370), xlim=c(0,21), xlab = "Time", ylab = "Weight", main = "Chick Growth")
colors = rainbow(50)
for(ID in 1:50){
  use.rows=which(data$Chick == ID)
  lines(x=data$Time[use.rows], y=data$weight[use.rows], col=colors[ID])
}
       
       