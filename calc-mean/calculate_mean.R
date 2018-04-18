#!/usr/bin/env R

inputdata <- read.csv(commandArgs()[6], header=FALSE)
calcvalue <- mean(inputdata[,c(1)])
cat(calcvalue)

