rm(list = ls(all=TRUE))

value = 6

if (value < 5){
  print ("The value is < 5")
  
} else if (value > 2 & value < 4){
    
  print ("The value is between 2 and 4")
  
} else {print ("The value is > 5")
  
}

mat <- NULL   # This is empty object
for (i in 1:3){
  for (j in 1:4){
    cbinding <- cbind(i,j)
    mat <- rbind(mat, cbinding)
  }
}

x = 5   # setting a test value

while(x < 10){
  print(x)
  x = x + 1
}

