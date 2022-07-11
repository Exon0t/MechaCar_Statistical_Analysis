library(jsonlite)
library(tidyverse)
library(dplyr)

MPG_dataset <- read.csv('resources/MechaCar_mpg.csv')

regression <- lm(mpg~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length,MPG_dataset)
summary(regression)


Suspension <- read.csv('resources/Suspension_Coil.csv')

total_summary <- Suspension %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI),SD = sd(PSI))

total_summary


lot_summary <- Suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI),SD = sd(PSI))


t.test(log10(Suspension$PSI))

lot1 <- subset(Suspension, Manufacturing_Lot == "Lot1")
t.test(log10(lot1$PSI))

lot2 <- subset(Suspension, Manufacturing_Lot == "Lot2")
t.test(log10(lot2$PSI))

lot3 <- subset(Suspension, Manufacturing_Lot == "Lot3")
t.test(log10(lot3$PSI))

                                                      