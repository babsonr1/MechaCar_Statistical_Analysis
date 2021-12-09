library(dplyr)
mechaCar <- read.csv(file="MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar))


suspensionCoil <- read.csv(file="Suspension_Coil.csv")
total_summary <- suspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary


lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary

t.test(suspensionCoil$PSI, mu=1500)
t.test(subset(suspensionCoil, Manufacturing_Lot == "Lot1", select=PSI), mu = 1500)
t.test(subset(suspensionCoil, Manufacturing_Lot == "Lot2", select=PSI), mu = 1500)
t.test(subset(suspensionCoil, Manufacturing_Lot == "Lot3", select=PSI), mu = 1500)