library(dplyr)
mechaCar <- read.csv(file="MechaCar_mpg.csv")
lm(vehicle_length ~ mpg, data = mechaCar)
summary(lm(vehicle_length ~ mpg, data = mechaCar))
