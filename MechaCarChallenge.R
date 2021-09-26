library(dplyr)

# DELIVERABLE 1

# Import and read CSV file as a dataframe.
MechaCar_Data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_Data) 

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_Data)) 

# DELIVERABLE 2

# Import and read CSV file as a dataframe.
Suspension_Coil_Data <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)

# Generate Total Summary 
Total_Summary <- Suspension_Coil_Data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) 

# Generate Lot Summary
Lot_Summary <- Suspension_Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

# DELIVERABLE 3 
