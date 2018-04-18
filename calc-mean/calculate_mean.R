#!/usr/bin/env R

inputdata <- read.csv("input1.txt", header=FALSE)
calcvalue <- mean(inputdata[,c(1)])
#write(calcvalue, "output1.txt")
#print(calcvalue)
cat(calcvalue)

