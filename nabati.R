setwd("D:/METOPEL UAS/BAIHAQI METOPEL")
library(readxl)
library(tidyverse)
library(kableExtra)
read_excel("nabati.xlsx")
dat <- read_excel("nabati.xlsx")
kbl(dat) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"))


# Plot 
# regresi
reg1<-lm(minyak~sawit+kelapa+zaitun+bunga,data=dat)
summary(reg1)

dat$m<-resid(reg1)
plot(dat$minyak,dat$m,xlab="Total Nilai Ekspor Bab 15 BTKI",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$sawit,dat$m,xlab="Ekspor Minyak Sawit",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$kelapa,dat$m,xlab="Ekspor Minyak Kelapa",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$zaitun,dat$m,xlab="Ekspor Minyak Zaitun",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$bunga,dat$m,xlab="Ekspor Minyak Bunga Matahari",ylab="error")
abline(h=0)
