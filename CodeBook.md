# GetCleanDataCoursera////Code Book
This codebook is for the class project for the GetCleanData course on Coursera.

The data is from accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Basically, the data relate to 30 subjects when doing 6 possible activities while attached to a Samsung Galaxy S smartphone.

The R script, called run_analysis.R, was required to do the following: 

1. Merge the training and the test sets to create one data set (with 561 accelerometer varaibles plus activity and subject).
2. Extract only the measurements on the mean and standard deviation for each measurement - variables containing mean() and std() in their names. Variables containing meanFreq() or mean/std within angle() were not included since they did not seem to be means and std of measurements as required. 
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject - produced using the averages of all the variables of the first data set for each the 180 combinations of activity and subject. Descriptive variable names were added - "avg...", activity and subject.

The second data set has 66 "avg" variables plus activity and subject with these names:
"avgtBodyAcc-mean()-X" "avgtBodyAcc-mean()-Y" "avgtBodyAcc-mean()-Z" "avgtGravityAcc-mean()-X" "avgtGravityAcc-mean()-Y" "avgtGravityAcc-mean()-Z" "avgtBodyAccJerk-mean()-X" "avgtBodyAccJerk-mean()-Y" "avgtBodyAccJerk-mean()-Z" "avgtBodyGyro-mean()-X" "avgtBodyGyro-mean()-Y" "avgtBodyGyro-mean()-Z" "avgtBodyGyroJerk-mean()-X" "avgtBodyGyroJerk-mean()-Y" "avgtBodyGyroJerk-mean()-Z" "avgtBodyAccMag-mean()" "avgtGravityAccMag-mean()" "avgtBodyAccJerkMag-mean()" "avgtBodyGyroMag-mean()" "avgtBodyGyroJerkMag-mean()" "avgfBodyAcc-mean()-X" "avgfBodyAcc-mean()-Y" "avgfBodyAcc-mean()-Z" "avgfBodyAccJerk-mean()-X" "avgfBodyAccJerk-mean()-Y" "avgfBodyAccJerk-mean()-Z" "avgfBodyGyro-mean()-X" "avgfBodyGyro-mean()-Y" "avgfBodyGyro-mean()-Z" "avgfBodyAccMag-mean()" "avgfBodyBodyAccJerkMag-mean()" "avgfBodyBodyGyroMag-mean()" "avgfBodyBodyGyroJerkMag-mean()" "avgtBodyAcc-std()-X" "avgtBodyAcc-std()-Y" "avgtBodyAcc-std()-Z" "avgtGravityAcc-std()-X" "avgtGravityAcc-std()-Y" "avgtGravityAcc-std()-Z" "avgtBodyAccJerk-std()-X" "avgtBodyAccJerk-std()-Y" "avgtBodyAccJerk-std()-Z" "avgtBodyGyro-std()-X" "avgtBodyGyro-std()-Y" "avgtBodyGyro-std()-Z" "avgtBodyGyroJerk-std()-X" "avgtBodyGyroJerk-std()-Y" "avgtBodyGyroJerk-std()-Z" "avgtBodyAccMag-std()" "avgtGravityAccMag-std()" "avgtBodyAccJerkMag-std()" "avgtBodyGyroMag-std()" "avgtBodyGyroJerkMag-std()" "avgfBodyAcc-std()-X" "avgfBodyAcc-std()-Y" "avgfBodyAcc-std()-Z" "avgfBodyAccJerk-std()-X" "avgfBodyAccJerk-std()-Y" "avgfBodyAccJerk-std()-Z" "avgfBodyGyro-std()-X" "avgfBodyGyro-std()-Y" "avgfBodyGyro-std()-Z" "avgfBodyAccMag-std()" "avgfBodyBodyAccJerkMag-std()" "avgfBodyBodyGyroMag-std()" "avgfBodyBodyGyroJerkMag-std()" "activity" "subject"

The base measurements corresponding were accelerometer readings and are described in more detail in the link given above.

