# Day 2 PLotting and Genetic Variation Data Analysis


rm(list = ls())


hap <- read.table('hapmap_CEU_r23a_chr2_ld-2.txt', header = T)
compute_chisquare=function(x){
  freq=sum(x,na.rm = TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm = TRUE)
  cnt1=sum(x==1,na.rm = TRUE)
  cnt2=sum(x==2,na.rm = TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}


snps=as.matrix(hap)


chisqs=apply(snps,1,compute_chisquare)

pval=pchisq(chisqs,1,lower.tail = FALSE)


signifthres <- 0.5

sum(pval<signifthres)
length(pval)
sum((pval<signifthres))/(length(pval))



signifthessmaller <- 0.01
sum((pval<signifthessmaller)/(length(pval)))




signifthessmallest <- 0.001
sum((pval<signifthessmallest)/(length(pval)))


num_pval <- length(pval)

exp_pvals <- (seq(1,num_pval, by=1))/num_pval

sort_pvals <- sort(pval, decreasing = FALSE)


log_sort_pvals <- (-log10(sort_pvals))
log_exp_pvals <- (-log10(exp_pvals))









plot(log_exp_pvals, log_sort_pvals, xlab = "-log10(Expected P-value)", ylab = "-log10(Observed P-value)", pch=19)




abline(0,1, h = 5, col = 2, lty = 2)





## 2


zz <- read.table("phenotypeDAY2.txt", header = TRUE)


quantile(zz$glucose_mmolperL, 0.25)

quantile(zz$glucose_mmolperL, 0.75)




hist(zz$glucose_mmolperL, xlab = "Glucose(mm/L)", main = "Histogram", las = 1)
L_tail <- quantile(zz$glucose_mmolperL, 0.25)
H_tail <- quantile(zz$glucose_mmolperL, 0.75)
abline(v = L_tail, col = 4)
abline(v = H_tail, col = 2)



