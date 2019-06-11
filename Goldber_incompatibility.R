rm(list = ls())
getwd()
setwd("/Users/richieeveragas/Desktop/Omics_Workshop/CSB-master/r/data/Goldberg2010_data.csv")
getwd()
library(tidyverse)
library(ggplot2)
library(ggthemes)
library(extrafont)
library(plyr)
install.packages("plyr")
install.packages("ggthemes")
install.packages("extrafont")
install.packages("ggplot2")
library(scales)
Goldberg <- read.csv("/Users/richieeveragas/Desktop/Omics_Workshop/CSB-master/r/data/Goldberg2010_data.csv")
Goldberg <- Goldberg %>% gather(Species, Status)

ggplot(data = Goldberg) +
  aes(x = Status) +
  scale_x_continuous(breaks = seq(0,5,1)) +
  geom_bar(fill = "blue", colour = "black") + theme_classic()

aes(x = Status) +
  scale_x_continuous(breaks = seq(0,5,1)) +
  geom_stack(fill = "null", colour = "black") + theme_classic()

ggplot(data = Gold) + geom_bar(aes(y = Species, x = Status, fill = product), data = Goldberg, stat="identity")

