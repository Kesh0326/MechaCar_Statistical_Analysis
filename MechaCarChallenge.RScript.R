library(dplyr)
mechacar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F) #read in Mechacar variables dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg)) #generate summary statistics
suspension_coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F) #read in Suspension Coil dataset
total_summary <- suspension_coil %>% summarize(Mean = mean(suspension_coil$PSI), Median = median(suspension_coil$PSI), Variance = var(suspension_coil$PSI), SD = sd(suspension_coil$PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table to group PSI column data by lots
t.test(suspension_coil$PSI, mu = 1500) #compare overall PSI vs. mean of 1500
PSI_lot1 <- suspension_coil %>% subset(Manufacturing_Lot=="Lot1") #select only datapoints where manufacturing lot is Lot1
PSI_lot2 <- suspension_coil %>% subset(Manufacturing_Lot=="Lot2") #select only datapoints where manufacturing lot is Lot2
PSI_lot3 <- suspension_coil %>% subset(Manufacturing_Lot=="Lot3") #select only datapoints where manufacturing lot is Lot3
t.test(PSI_lot1$PSI, mu = 1500) #compare Lot1 PSI vs. mean of 1500
t.test(PSI_lot2$PSI, mu = 1500) #compare Lot2 PSI vs. mean of 1500
t.test(PSI_lot3$PSI, mu = 1500) #compare Lot3 PSI vs. mean of 1500
