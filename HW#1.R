title: "Homework#1"
author: "Yetsy Santa"
date: "01-31-2024"
output: github_document

Lecture 1 notes replication:

setwd("BRFSS_2022")
load("BRFSS2022_rev.RData")

brfss22[1:10,1:6]

attach(brfss22)

summary(brfss22)

summary(SLEPTIM1[X_STATE == "New York"])

summary(SLEPTIM1[X_STATE == "Ohio"])

mean(SLEPTIM1[X_STATE == "New York"], na.rm = TRUE)

sd(SLEPTIM1[X_STATE == "New York"], na.rm = TRUE)

mean(SLEPTIM1[X_STATE == "Ohio"], na.rm = TRUE)

sd(SLEPTIM1[X_STATE == "Ohio"], na.rm = TRUE)


Lecture 1A notes replications:

hist(SLEPTIM1[(SLEPTIM1 >5) & (SLEPTIM1 < 9)])

summary(SEXVAR)

summary(BIRTHSEX)

summary(GENHLTH)

summary(EDUCA)

install.packages("tidyverse")
install.packages("plyr")

summary(X_AGEG5YR)

summary(INCOME3)

table(GENHLTH,SEXVAR)

xtabs(~GENHLTH + SEXVAR)

prop.table(table(GENHLTH,SEXVAR))

mean(SLEPTIM1[(EDUCA == "College 4 years or more (College graduate)")], na.rm = TRUE)

# alternatively
restrict1 <- as.logical(EDUCA == "College 4 years or more (College graduate)")
dat_subset1 <- subset(brfss22, restrict1)

detach()
attach(dat_subset1)

mean(SLEPTIM1, na.rm = TRUE)
detach()

mean(brfss22$SLEPTIM1, na.rm = TRUE)






One interesting thing I found from the data is that men are more likely to smoke then women. Also the majority of the participants where between age 65 to 69 and most were college graduates. What suprised me was the ACE score where parents punching, and kicking each other was very high. It shows that these violence occur more than once then getting hurt just one time in their life.

