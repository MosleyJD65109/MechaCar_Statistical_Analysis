#Deliverable 1

#load dplyr library
library(dplyr) 

#read csv file
mecha_car <- read.csv('C:/Users/Jeff Mosley/Documents/15 Module - R/R_Analysis/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# run linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_car)

# summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_car))

#Deliverable 1 Complete

#Deliverable 2

suspension_coil <- read.csv('C:/Users/Jeff Mosley/Documents/15 Module - R/R_Analysis/Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#get total summary
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

#get lot summary
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

#Deliverable 2 Complete

#Deliverable 3

#run t-test across all manufacturing lots
t.test(suspension_coil$PSI,mu = 1500)

#run t-test on Lot 1
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

#run t-test on Lot 2
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

#run t-test on Lot 3
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

#Deliverable 3 Complete