library(dplyr)
mechacar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F) #read in Mechacar variables dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg)) #generate summary statistics
suspension_coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F) #read in Suspension Coil dataset
total_summary <- suspension_coil %>% summarize(Mean = mean(suspension_coil$PSI), Median = median(suspension_coil$PSI), Variance = var(suspension_coil$PSI), SD = sd(suspension_coil$PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table to group PSI column data by lots
