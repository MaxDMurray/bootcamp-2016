# Exercise 1 for statement 

for(ii in 1:1){cat("\*", ii)}
for(ii in 1:1){cat("\n*", ii)}
for(ii in 1:9){cat("\n*", ii)}
for(ii in 1:9){cat("n ", ii)}

for(ii in 1:9){cat("\ ", ii)}
for(ii in 1:9){cat(" ", ii)}
for(ii in 1:9){cat("0", ii)}


for(ii in 1:9){
  cat("\n")
  }
ii


for(ii in 1:9){
  if(ii = 9){cat("\*")}
  cat("\n")
}


for(ii in 1:9){cat("\n")}{
  if(ii =9) cat("*")
}


for(ii in 1:9){cat("\n")
for(ii in 1:9){cat("\n")}
  
  
for(ii in 1:9){if(ii=9){cat("\n")} else{cat(ii, "\*")}
   #check to see if ii equals 9
   #otherwise, cat a newline character
}
  
  for(ii in 1:9){if(ii==9){cat("*")} else{cat("\n")}}
  print(ii)
  # what happened here was that when ii==9 i printed a *, when it was anything else i printed a blank
  
  
  # Exercise 2
ii==1:10
for(ii in 1:10){cat("\n*")}
for(ii in 1:10){cat("*")}
  for(ii in 1:10){cat("*&")}


# Exercise 3

dogs <- 10
for(i in 1:5){
  dogs <- dogs +1
}
print(dogs)
# for iteration 1 dogs = 10 before, then 11 after
# for iteration 2 dogs = 11 before, then 12 after
# for iteration 3 dogs = 12 before, then 13 after
# for iteration 4 dogs = 13 before, then 14 after
# for iteration 5 dogs = 14 before, then 15 after

#iteration 1 meatloaf = 0 before, then -4
#iteration 2 meatloaf = -4 before, then -9
#iteration 3 meatloaf = -9 before, then -15
#iteration 4 meatloaf = -15 before, then -22
#iteration 1 meatloaf = -22 before, then -30

meatloaf <-0
for(i in 5:9){
  meatloaf <- meatloaf - i +1
  cat(meatloaf)
}
i
meatloaf
print(i)
i

#iteration 1 bubbles = 12 before, then -1 after
#iteration 2 bubbles = -1 before, then -2 after
#iteration 3 bubbles = -2 before, then -3 after
#iteration 4 bubbles = -3 before, then -4 after

bubbles <- 12
for (i in -1:-4){
  bubbles <- i
  cat(bubbles)
}

# Exercise 4

years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
  
}

years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!')
  }
  
}



years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t')
  }
  
}



years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
    
  }
  
}



years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
    if(years[ii] %% 4 == 0){
      cat(years[ii], 'Hooray, presidential elections!', sep = '\t', fill = T) 
  }
  }
}



# Exercise 5

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5)

compounded <- rep(1, length(bankAccounts))
interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

# Exercise 6





