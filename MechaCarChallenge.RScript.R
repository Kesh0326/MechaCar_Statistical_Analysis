library(dplyr)
mechacar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F) #read in dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg)) #generate summary statistics
