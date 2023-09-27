install.packages("Information")
library(Information)

# Read data
setwd("D:/USERS/tsmyth/Desktop/R_training/Titanic")
mydata <- read.csv("train.csv")

summary(mydata)

# make categorical variables of class factor
mydata$Pclass <- factor(mydata$Pclass)
mydata$Sex <- factor(ifelse(mydata$Sex == "male", 1, 0))
mydata$Embarked <- factor(mydata$Embarked)

# make binary dependent variable numeric
mydata$Survived <- as.numeric(mydata$Survived)



#-------------------------------- IV and WOE calculation -------------------------------#
# compute information value and (IV) and weight of evidence (WOE)
# this function takes all variables except dependent variables as predictors from dataset and runs iv on them
#This function supports parallel computing. If you want to run you code in parallel computing mode, you can run the following code.
iv <- create_infotables(data = mydata, y = "Survived", bins=10, parallel = FALSE)

# IV
# Information Value in R In IV list, the list Summary contains IV values of all the independent variables.
iv_value <- data.frame(iv$Summary)

# WOE
# To get WOE table for variable AGE, you need to call Tables list from IV list
print(iv$Tables$Age, row.names = FALSE)

#To get WOE table for variable AGE, you need to call Tables list from IV list
age_woe <- data.frame(iv$Tables$Age)

# plot
plot_infotables(iv, "Age")

# miltiple plots 
plot_infotables(iv, iv$Summary$Variable[1:9], same_scales = FALSE)








# Ignore
sample_data <- as.data.frame(c(1,0,0,0,1,0,0,0,1,1) )
sample_data <- cbind(sample_data, c(24,25,28,32,34,24,33,34,26,21))
names(sample_data) <- c("Bad", "Age")
sample_iv <- create_infotables(sample_data, y = "Bad", bins = 3, parallel =  FALSE)
sample_iv_value <- data.frame(sample_iv$Summary)
sample_woe_values <- data.frame(sample_iv$Tables)


 