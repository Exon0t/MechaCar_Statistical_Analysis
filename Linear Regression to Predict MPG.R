library(jsonlite)
library(tidyverse)
library(dplyr)

MPG_dataset <- read.csv('resources/MechaCar_mpg.csv')

regression <- lm(mpg~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length,MPG_dataset)
summary(regression)
