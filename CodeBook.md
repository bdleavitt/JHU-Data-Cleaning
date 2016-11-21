## CodeBook
The tidy data set resulting from the run_analysis.R pulls together test and training data and the relevant subject and activity metadata from the UCI HAR Dataset. 

subject_id: 1-30, reprenting a unique volunteer.
activity: 1:WALKING; 2:WALKING_UPSTAIRS; 3:WALKING_DOWNSTAIRS; 4:SITTING; 5:STANDING; 6:LAYING
measurement: is factor representing each of the collected sensor values, in the list below.  
avg: shows the average of these values for each subject and activity. 


[1] "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyAccMean,gravity)"         
[3] "angle(tBodyGyroJerkMean,gravityMean)" "angle(tBodyGyroMean,gravityMean)"    
[5] "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                
[7] "angle(Z,gravityMean)"                 "fBodyAcc-mean()-X"                   
[9] "fBodyAcc-mean()-Y"                    "fBodyAcc-mean()-Z"                   
[11] "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"               
[13] "fBodyAcc-meanFreq()-Z"                "fBodyAcc-std()-X"                    
[15] "fBodyAcc-std()-Y"                     "fBodyAcc-std()-Z"                    
[17] "fBodyAccJerk-mean()-X"                "fBodyAccJerk-mean()-Y"               
[19] "fBodyAccJerk-mean()-Z"                "fBodyAccJerk-meanFreq()-X"           
[21] "fBodyAccJerk-meanFreq()-Y"            "fBodyAccJerk-meanFreq()-Z"           
[23] "fBodyAccJerk-std()-X"                 "fBodyAccJerk-std()-Y"                
[25] "fBodyAccJerk-std()-Z"                 "fBodyAccMag-mean()"                  
[27] "fBodyAccMag-meanFreq()"               "fBodyAccMag-std()"                   
[29] "fBodyBodyAccJerkMag-mean()"           "fBodyBodyAccJerkMag-meanFreq()"      
[31] "fBodyBodyAccJerkMag-std()"            "fBodyBodyGyroJerkMag-mean()"         
[33] "fBodyBodyGyroJerkMag-meanFreq()"      "fBodyBodyGyroJerkMag-std()"          
[35] "fBodyBodyGyroMag-mean()"              "fBodyBodyGyroMag-meanFreq()"         
[37] "fBodyBodyGyroMag-std()"               "fBodyGyro-mean()-X"                  
[39] "fBodyGyro-mean()-Y"                   "fBodyGyro-mean()-Z"                  
[41] "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"              
[43] "fBodyGyro-meanFreq()-Z"               "fBodyGyro-std()-X"                   
[45] "fBodyGyro-std()-Y"                    "fBodyGyro-std()-Z"                   
[47] "tBodyAcc-mean()-X"                    "tBodyAcc-mean()-Y"                   
[49] "tBodyAcc-mean()-Z"                    "tBodyAcc-std()-X"                    
[51] "tBodyAcc-std()-Y"                     "tBodyAcc-std()-Z"                    
[53] "tBodyAccJerk-mean()-X"                "tBodyAccJerk-mean()-Y"               
[55] "tBodyAccJerk-mean()-Z"                "tBodyAccJerk-std()-X"                
[57] "tBodyAccJerk-std()-Y"                 "tBodyAccJerk-std()-Z"                
[59] "tBodyAccJerkMag-mean()"               "tBodyAccJerkMag-std()"               
[61] "tBodyAccMag-mean()"                   "tBodyAccMag-std()"                   
[63] "tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"                  
[65] "tBodyGyro-mean()-Z"                   "tBodyGyro-std()-X"                   
[67] "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                   
[69] "tBodyGyroJerk-mean()-X"               "tBodyGyroJerk-mean()-Y"              
[71] "tBodyGyroJerk-mean()-Z"               "tBodyGyroJerk-std()-X"               
[73] "tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"               
[75] "tBodyGyroJerkMag-mean()"              "tBodyGyroJerkMag-std()"              
[77] "tBodyGyroMag-mean()"                  "tBodyGyroMag-std()"                  
[79] "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                
[81] "tGravityAcc-mean()-Z"                 "tGravityAcc-std()-X"                 
[83] "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                 
[85] "tGravityAccMag-mean()"                "tGravityAccMag-std()"  


These variables were generated through the process described in the README file. 
## More information:
Additional information about the source of these data their specific properties can be found int hte UCI HAR Dataset, in the activity_labels and features_info.txt files.

