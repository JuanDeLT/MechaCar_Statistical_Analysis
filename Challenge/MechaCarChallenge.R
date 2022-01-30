#packages
install.packages("tidyverse")
install.packages("jsonlite")
library(jsonlite)
library(tidyverse)
library(dplyr)

#making original tables with the data
MechaCar_mpg_table <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
Suspension_Coil_table <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

#Deliverable 1
head(MechaCar_mpg_table)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_table))

#Deliverable 2
total_summary <- Suspension_Coil_table %>% summarize(Mean= mean(PSI), Median= median(PSI), Variance= var(PSI), SD= sd(PSI))
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(PSI), Median= median(PSI), Variance= var(PSI), SD= sd(PSI), .groups= 'keep')

#Deliverable 3
t.test((Suspension_Coil_table$PSI),mu = 1500)

t.test(subset(Suspension_Coil_table,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(Suspension_Coil_table,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(Suspension_Coil_table,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)
