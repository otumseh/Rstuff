# Diagnostics for outliers, multicollinearity
#

setwd("M:/teaching/512/data")
police<-foreign::read.dbf("police/police.dbf",as.is=FALSE)
police2<-foreign::read.dbf("police/police2.dbf",as.is=FALSE)
names(police)
cor(police[,c(11,13:20)])
pairs(police[,c(11,13:20)],cex=0.2)

# Regress POLICE with all 8 variables

police_full<-lm(POLICE~INC+TAX+CRIME+UNEMP+OWN+COLLEGE+WHITE+COMMUTE,
data=police)
summary(police_full)
plot(police_full,which=1:4)

# Check multicollinearity
#Need to install the package "perturb", then load it
#Need to install the package "car", then load it

library(perturb)
colldiag(police_full)
library(car)
vif(police_full)

# Backward elimination using data set with indicator variables
police2_bw<-step(lm(POLICE~INC+TAX+CRIME+UNEMP+OWN+COLLEGE+WHITE+COMMUTE+DUMMY,
data=police2),direction="backward")
summary(police2_bw)

# Forward selection
police2_fw<-step(lm(POLICE~1,data=police2),direction="forward",
scope=~INC+TAX+CRIME+UNEMP+OWN+COLLEGE+WHITE+COMMUTE+DUMMY,data=police2)
summary(police2_fw)

# Stepwise (mixed)
police2_bth<-step(lm(POLICE~INC+TAX+CRIME+UNEMP+OWN+COLLEGE+WHITE+COMMUTE+DUMMY,
data=police2),direction="backward")
summary(police_bth)