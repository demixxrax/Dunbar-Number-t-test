L = read.csv("/Users/pk/Downloads/facebookdata.csv") # read in the Facebook dataset csv
View(L)
mean(L$numfriends) # Find the mean for all variables in the dataset
sd(L$numfriends) # Find the standard deviation for all variables in the dataset
2*pt(20.28606443, 382, lower.tail = FALSE) # Conduct a two tailed one-sample t-test 
A <- subset(L, L$numfriends>=150) # Create a subset with students that have over or equal to 150 Facebook friends 
B <- subset(L, L$numfriends<150) # Create a subset with students that have fewer than 150 Facebook friends
View(A)
mean(A$meetnewppl) # Find the mean repsonse to the meetnewppl variable for the A subset
mean(B$meetnewppl) # Find the mean repsonse to the meetnewppl variable for the B subset
sd(A$meetnewppl) # Find the standard deviation for repsonses to the meetnewppl variable for the A subset
sd(B$meetnewppl) # Find the standard deviation for repsonses to the meetnewppl variable for the B subset
2*pt(2.994701367, 381, lower.tail = FALSE) # Conduct a two tailed two-sample t-test