# clear environment
rm(list = ls())

# load pain.dat file
painData = read.table("data/pain.dat", header = FALSE, na.strings = "999")

# label variables
names(painData) = c("id", "txgrp", "male", "age", "edugroup", "workhrs", "exercise", "paingrps", 
                "pain", "anxiety", "stress", "control", "depress", "interfere", "disability",
                paste0("dep", seq(1:7)), paste0("int", seq(1:6)), paste0("dis", seq(1:6)))

# create plot of depression vs pain with points shown
plot(painData$pain, painData$depress, pch = 19, xlab = "Pain", ylab = "Depression", main = "Depression vs Pain")

