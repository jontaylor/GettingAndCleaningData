List of columns
===============

 [1] "subject_id"                    "activity_id"                   "tBodyAcc_mean_X"              
 [4] "tBodyAcc_mean_Y"               "tBodyAcc_mean_Z"               "tBodyAcc_std_X"               
 [7] "tBodyAcc_std_Y"                "tBodyAcc_std_Z"                "tGravityAcc_mean_X"           
[10] "tGravityAcc_mean_Y"            "tGravityAcc_mean_Z"            "tGravityAcc_std_X"            
[13] "tGravityAcc_std_Y"             "tGravityAcc_std_Z"             "tBodyAccJerk_mean_X"          
[16] "tBodyAccJerk_mean_Y"           "tBodyAccJerk_mean_Z"           "tBodyAccJerk_std_X"           
[19] "tBodyAccJerk_std_Y"            "tBodyAccJerk_std_Z"            "tBodyGyro_mean_X"             
[22] "tBodyGyro_mean_Y"              "tBodyGyro_mean_Z"              "tBodyGyro_std_X"              
[25] "tBodyGyro_std_Y"               "tBodyGyro_std_Z"               "tBodyGyroJerk_mean_X"         
[28] "tBodyGyroJerk_mean_Y"          "tBodyGyroJerk_mean_Z"          "tBodyGyroJerk_std_X"          
[31] "tBodyGyroJerk_std_Y"           "tBodyGyroJerk_std_Z"           "tBodyAccMag_mean"             
[34] "tBodyAccMag_std"               "tGravityAccMag_mean"           "tGravityAccMag_std"           
[37] "tBodyAccJerkMag_mean"          "tBodyAccJerkMag_std"           "tBodyGyroMag_mean"            
[40] "tBodyGyroMag_std"              "tBodyGyroJerkMag_mean"         "tBodyGyroJerkMag_std"         
[43] "fBodyAcc_mean_X"               "fBodyAcc_mean_Y"               "fBodyAcc_mean_Z"              
[46] "fBodyAcc_std_X"                "fBodyAcc_std_Y"                "fBodyAcc_std_Z"               
[49] "fBodyAcc_meanFreq_X"           "fBodyAcc_meanFreq_Y"           "fBodyAcc_meanFreq_Z"          
[52] "fBodyAccJerk_mean_X"           "fBodyAccJerk_mean_Y"           "fBodyAccJerk_mean_Z"          
[55] "fBodyAccJerk_std_X"            "fBodyAccJerk_std_Y"            "fBodyAccJerk_std_Z"           
[58] "fBodyAccJerk_meanFreq_X"       "fBodyAccJerk_meanFreq_Y"       "fBodyAccJerk_meanFreq_Z"      
[61] "fBodyGyro_mean_X"              "fBodyGyro_mean_Y"              "fBodyGyro_mean_Z"             
[64] "fBodyGyro_std_X"               "fBodyGyro_std_Y"               "fBodyGyro_std_Z"              
[67] "fBodyGyro_meanFreq_X"          "fBodyGyro_meanFreq_Y"          "fBodyGyro_meanFreq_Z"         
[70] "fBodyAccMag_mean"              "fBodyAccMag_std"               "fBodyAccMag_meanFreq"         
[73] "fBodyBodyAccJerkMag_mean"      "fBodyBodyAccJerkMag_std"       "fBodyBodyAccJerkMag_meanFreq" 
[76] "fBodyBodyGyroMag_mean"         "fBodyBodyGyroMag_std"          "fBodyBodyGyroMag_meanFreq"    
[79] "fBodyBodyGyroJerkMag_mean"     "fBodyBodyGyroJerkMag_std"      "fBodyBodyGyroJerkMag_meanFreq"


Feature Selection 
=================

The generated data set is grouped by the first two columns named subject_id and activity_id.

The other columns are a subset of those provided by the UCI HAR Dataset (included in the data subdirectory)

tBodyAcc_XYZ
tGravityAcc_XYZ
tBodyAccJerk_XYZ
tBodyGyro_XYZ
tBodyGyroJerk_XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc_XYZ
fBodyAccJerk_XYZ
fBodyGyro_XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Each column contains the average (across subject and activity for the following column types)

mean: Mean value
std: Standard deviation


