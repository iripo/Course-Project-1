# Course-Project-1
Getting and Cleaning Data Course Project

Script in this repo is Run-analysis.R.
It is R script. The packages used in it are data.table, dplyr, reshape2.

And the script do the following:
1) Read and unzip the file "getdata_projectfiles_UCI HAR Dataset.zip" into the "data" sub directory.
2) Read following files into the Data Tables:
        subject_test.txt
        subject_train.txt
        X_test.txt
        X_train.txt
        Y_test.txt
        Y_train.txt
        features.txt
        activity_labels.txt

4) Rename variables in train and test sets according to the features-file 
5) Add Activity and Subject variables and appropriately labels the data set with descriptive variable names.
6) Merge train & test sets. Create new dataset according to this: Extracts only the measurements on the mean and standard deviation for each measurement.
7) Uses descriptive activity names to name the activities in the data set
8) Compute the average of each variable for each activity and each subject
9) Save the TidyData into "TidyData.txt".

