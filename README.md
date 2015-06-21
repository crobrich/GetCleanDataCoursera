# GetCleanDataCoursera
This repo is for the class project for the GetCleanData course on Coursera.

The data is from accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Basically, the data relate to 30 subjects when doing 6 possible activities while attached to a Samsung Galaxy S smartphone.

The R script, called run_analysis.R, was required to do the following: 

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

The data set from step 5. is then sent to a txt file created with write.table() using row.name=FALSE.

The code is in a file called run_analysis.R that requires the Samsung data files in order to run. The code resets the working directory as needed to obtain the various data files following the structure of the data as downloaded. The exact paths would have to be edited to match the setup of other users. Othwerwise, users would have to change the structure of the Samsung data such that all the files lie within one directory which is set as the working directory before running the code, then the setwd paths would need to be deleted from the code. 

A summary of the code itself (see comments within the code):

Combines test data files, combines training data files, then combines the test and training data combinations all into one file.

Finds the mean and std dev variables (containing mean() and std() in their names - variables containing meanFreq() or mean/std within angle() were not included since they did not seem to be means and std of measurements as required). 

Subsets/Partitions off the mean and std variables plus activity and subject into a separate file.

Changes activity numbers to corresponding activity names.

Changes variable names to descriptives.

First tidy data set is the result so far.

A second tidy data set is produced using the averages of all the variables of the first for each the 180 combinations of activity and subject. Descriptive variable names were added - "avg", activity and subject.

The second tidy data set is written to a text file.
