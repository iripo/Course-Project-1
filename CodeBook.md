##CodeBook

This code book describes the variables, the data, and any transformations or work that 
was performed to clean up the data.

##DATA
The data for this task here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Transformation:

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

##Variables of TidyData.txt

 [1] "Subject"
 identifies the subject who performed the activity for each window sample. 
 Its range is from 1 to 30.
 
 [2] "Activity"                            
 activity name
 1 WALKING
 2 WALKING_UPSTAIRS
 3 WALKING_DOWNSTAIRS
 4 SITTING
 5 STANDING
 6 LAYING
 
 
 All variables below are numeric.
 And contain  the average for each activity and each subject. 
 [3] "tBodyAcc.mean...X"                   
 [4] "tBodyAcc.mean...Y"                   
 [5] "tBodyAcc.mean...Z"                   
 [6] "tGravityAcc.mean...X"                
 [7] "tGravityAcc.mean...Y"                
 [8] "tGravityAcc.mean...Z"                
 [9] "tBodyAccJerk.mean...X"               
[10] "tBodyAccJerk.mean...Y"               
[11] "tBodyAccJerk.mean...Z"               
[12] "tBodyGyro.mean...X"                  
[13] "tBodyGyro.mean...Y"                  
[14] "tBodyGyro.mean...Z"                  
[15] "tBodyGyroJerk.mean...X"              
[16] "tBodyGyroJerk.mean...Y"              
[17] "tBodyGyroJerk.mean...Z"              
[18] "tBodyAccMag.mean.."                  
[19] "tGravityAccMag.mean.."               
[20] "tBodyAccJerkMag.mean.."              
[21] "tBodyGyroMag.mean.."                 
[22] "tBodyGyroJerkMag.mean.."             
[23] "fBodyAcc.mean...X"                   
[24] "fBodyAcc.mean...Y"                   
[25] "fBodyAcc.mean...Z"                   
[26] "fBodyAcc.meanFreq...X"               
[27] "fBodyAcc.meanFreq...Y"               
[28] "fBodyAcc.meanFreq...Z"               
[29] "fBodyAccJerk.mean...X"               
[30] "fBodyAccJerk.mean...Y"               
[31] "fBodyAccJerk.mean...Z"               
[32] "fBodyAccJerk.meanFreq...X"           
[33] "fBodyAccJerk.meanFreq...Y"           
[34] "fBodyAccJerk.meanFreq...Z"           
[35] "fBodyGyro.mean...X"                  
[36] "fBodyGyro.mean...Y"                  
[37] "fBodyGyro.mean...Z"                  
[38] "fBodyGyro.meanFreq...X"              
[39] "fBodyGyro.meanFreq...Y"              
[40] "fBodyGyro.meanFreq...Z"              
[41] "fBodyAccMag.mean.."                  
[42] "fBodyAccMag.meanFreq.."              
[43] "fBodyBodyAccJerkMag.mean.."          
[44] "fBodyBodyAccJerkMag.meanFreq.."      
[45] "fBodyBodyGyroMag.mean.."             
[46] "fBodyBodyGyroMag.meanFreq.."         
[47] "fBodyBodyGyroJerkMag.mean.."         
[48] "fBodyBodyGyroJerkMag.meanFreq.."     
[49] "angle.tBodyAccMean.gravity."         
[50] "angle.tBodyAccJerkMean..gravityMean."
[51] "angle.tBodyGyroMean.gravityMean."    
[52] "angle.tBodyGyroJerkMean.gravityMean."
[53] "angle.X.gravityMean."                
[54] "angle.Y.gravityMean."                
[55] "angle.Z.gravityMean."                
[56] "tBodyAcc.std...X"                    
[57] "tBodyAcc.std...Y"                    
[58] "tBodyAcc.std...Z"                    
[59] "tGravityAcc.std...X"                 
[60] "tGravityAcc.std...Y"                 
[61] "tGravityAcc.std...Z"                 
[62] "tBodyAccJerk.std...X"                
[63] "tBodyAccJerk.std...Y"                
[64] "tBodyAccJerk.std...Z"                
[65] "tBodyGyro.std...X"                   
[66] "tBodyGyro.std...Y"                   
[67] "tBodyGyro.std...Z"                   
[68] "tBodyGyroJerk.std...X"               
[69] "tBodyGyroJerk.std...Y"               
[70] "tBodyGyroJerk.std...Z"               
[71] "tBodyAccMag.std.."                   
[72] "tGravityAccMag.std.."                
[73] "tBodyAccJerkMag.std.."               
[74] "tBodyGyroMag.std.."                  
[75] "tBodyGyroJerkMag.std.."              
[76] "fBodyAcc.std...X"                    
[77] "fBodyAcc.std...Y"                    
[78] "fBodyAcc.std...Z"                    
[79] "fBodyAccJerk.std...X"                
[80] "fBodyAccJerk.std...Y"                
[81] "fBodyAccJerk.std...Z"                
[82] "fBodyGyro.std...X"                   
[83] "fBodyGyro.std...Y"                   
[84] "fBodyGyro.std...Z"                   
[85] "fBodyAccMag.std.."                   
[86] "fBodyBodyAccJerkMag.std.."           
[87] "fBodyBodyGyroMag.std.."              
[88] "fBodyBodyGyroJerkMag.std.."          

