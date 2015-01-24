# Coursera Course Assignment - Getting and Cleaning Data
# run_analysis.R

#Install required packages
install.packages("data.table")
install.packages("dplyr")
install.packages("reshape2")
library(data.table); library(dplyr); library(reshape2)

#read all the needed datasets 
col <- read.table("H:/coursR/Data_anal/UCI HAR Dataset/features.txt")
act1 <- read.table("H:/coursR/Data_anal/UCI HAR Dataset/test/Y_test.txt")
sbj1 <- read.table("H:/coursR/Data_anal/UCI HAR Dataset/test/subject_test.txt")
act2 <- read.table("H:/coursR/Data_anal/UCI HAR Dataset/train/Y_train.txt")
sbj2 <- read.table("H:/coursR/Data_anal/UCI HAR Dataset/train/subject_train.txt")

#Rename variables according to the features-file
#Add Activity and Subject variables and appropriately labels 
#the data set with descriptive variable names.

col <- as.vector(col[,2])
tst <- read.table(file="H:/coursR/Data_anal/UCI HAR Dataset/test/X_test.txt",col.names=col)
test <- rename(cbind(tst,act1), Activity = V1)
test <- rename(cbind(test,sbj1), Subject = V1)

trn <- read.table(file="H:/coursR/Data_anal/UCI HAR Dataset/train/X_train.txt",col.names=col)
train <- rename(cbind(trn,act2), Activity = V1) 
train <- rename(cbind(trn,sbj2), Subject = V1)

#Merge train & test sets. Create new dataset according to this:
#Extracts only the measurements on the mean and standard deviation
#for each measurement.

dat <- merge(train, test, all = TRUE)
pdt <- tbl_df(dat)
data <- select(pdt, contains("mean"), contains("std"), Activity, Subject)

#Uses descriptive activity names to name the activities in the data set
data$Activity <- factor(data$Activity, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

#Compute the average of each variable for each activity and each subject
Mdt = melt(data, id.var = c("Activity", "Subject"))
TidyData = dcast(Mdt , Subject + Activity ~ variable, mean)

write.table(TidyData, file="TidyData.txt", sep=";", row.names=FALSE)


