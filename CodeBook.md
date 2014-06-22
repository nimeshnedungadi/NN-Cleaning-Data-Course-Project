# Code book
===================================

The raw data for the project was downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Information about that data can be obtained from [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

After downloading the files i did the following to extract the tidy dataset.
* Merge the training and test data
* Extracted only the mean and standard deviation for each measurement
* Assigned descriptive names to the columns of the dataset
* Created the independant tidy dataset with the average of each variable for each activity by each subject

The R script run_analysis.R does the above mentioned actions along with download of the files and un-zipping of the zip files. 

For descriptive names, i have used the following transforms on the featurenames provided in the original data's features.txt to create the column-names of the tidy dataset
* -mean() replaced by Mean
* -std() replaced by Std
* BodyBody replaced by Body (having BodyBody is a typo in the original dataset)
* -X replaced by _X
* -Y replaced by _Y
* -Z replaced by _Z

Column names and detailed descriptions
*	SubjectId			Identifier of the subject
*	ActivityName			Name of the Activity
*	MeanOftBodyAccMean_X		Mean of the mean of X coordinate readings of body acceleration
*	MeanOftBodyAccMean_Y		Mean of the mean of Y coordinate readings of body acceleration
*	MeanOftBodyAccMean_Z		Mean of the mean of Z coordinate readings of body acceleration
*	MeanOftBodyAccStd_X		Mean of the standard deviation of X coordinate readings of body acceleration
*	MeanOftBodyAccStd_Y		Mean of the standard deviation  of Y coordinate readings of body acceleration
*	MeanOftBodyAccStd_Z		Mean of the standard deviation  of Z coordinate readings of body acceleration
*	MeanOftGravityAccMean_X		Mean of the mean of X coordinate readings of gravitational acceleration 
*	MeanOftGravityAccMean_Y		Mean of the mean of Y coordinate readings of gravitational acceleration 
*	MeanOftGravityAccMean_Z		Mean of the mean of Z coordinate readings of gravitational acceleration 
*	MeanOftGravityAccStd_X		Mean of the standard deviation of X coordinate readings of gravitational acceleration 
*	MeanOftGravityAccStd_Y		Mean of the standard deviation of Y coordinate readings of gravitational acceleration 
*	MeanOftGravityAccStd_Z		Mean of the standard deviation of Z coordinate readings of gravitational acceleration 
*	MeanOftBodyAccJerkMean_X	Mean of the mean of X coordinate readings of body acceleration jerk 
*	MeanOftBodyAccJerkMean_Y	Mean of the mean of Y coordinate readings of body acceleration jerk 
*	MeanOftBodyAccJerkMean_Z	Mean of the mean of Z coordinate readings of body acceleration jerk 
*	MeanOftBodyAccJerkStd_X		Mean of the standard deviation of X coordinate readings of body acceleration jerk 
*	MeanOftBodyAccJerkStd_Y		Mean of the standard deviation of Y coordinate readings of body acceleration jerk 
*	MeanOftBodyAccJerkStd_Z		Mean of the standard deviation of Z coordinate readings of body acceleration jerk 
*	MeanOftBodyGyroMean_X		Mean of the mean of X coordinate readings of body gyro
*	MeanOftBodyGyroMean_Y		Mean of the mean of Y coordinate readings of body gyro
*	MeanOftBodyGyroMean_Z		Mean of the mean of Z coordinate readings of body gyro
*	MeanOftBodyGyroStd_X		Mean of the standard deviation of X coordinate readings of body gyro
*	MeanOftBodyGyroStd_Y		Mean of the standard deviation of Y coordinate readings of body gyro
*	MeanOftBodyGyroStd_Z		Mean of the standard deviation of Z coordinate readings of body gyro
*	MeanOftBodyGyroJerkMean_X	Mean of the mean of X coordinate readings of body gyro jerk
*	MeanOftBodyGyroJerkMean_Y	Mean of the mean of Y coordinate readings of body gyro jerk
*	MeanOftBodyGyroJerkMean_Z	Mean of the mean of Z coordinate readings of body gyro jerk
*	MeanOftBodyGyroJerkStd_X	Mean of the standard deviation of X coordinate readings of body gyro jerk
*	MeanOftBodyGyroJerkStd_Y	Mean of the standard deviation of Y coordinate readings of body gyro jerk
*	MeanOftBodyGyroJerkStd_Z	Mean of the standard deviation of Z coordinate readings of body gyro jerk
*	MeanOftBodyAccMagMean		Mean of the mean of Body acceleration magnitude
*	MeanOftBodyAccMagStd		Mean of the standard deviation of Body acceleration magnitude
*	MeanOftGravityAccMagMean	Mean of the mean of gravitational acceleration magnitude
*	MeanOftGravityAccMagStd		Mean of the standard deviation of gravitational acceleration magnitude
*	MeanOftBodyAccJerkMagMean	Mean of the mean of Body acceleration jerk magnitude
*	MeanOftBodyAccJerkMagStd	Mean of the standard deviation of Body acceleration jerk magnitude
*	MeanOftBodyGyroMagMean		Mean of the mean of Body gyro magnitude
*	MeanOftBodyGyroMagStd		Mean of the standard deviation of the Body gyro magnitude
*	MeanOftBodyGyroJerkMagMean	Mean of the mean of Body gyro jerk magnitude
*	MeanOftBodyGyroJerkMagStd	Mean of the standard deviation of the Body gyro jerk magnitude
*	MeanOffBodyAccMean_X		Mean of the mean of fourier transform of X coordinate of Body acceleration
*	MeanOffBodyAccMean_Y		Mean of the mean of fourier transform of Y coordinate of Body acceleration
*	MeanOffBodyAccMean_Z		Mean of the mean of fourier transform of Z coordinate of Body acceleration
*	MeanOffBodyAccStd_X		Mean of the standard deviation of fourier transform of X coordinate of Body acceleration
*	MeanOffBodyAccStd_Y		Mean of the standard deviation of fourier transform of Y coordinate of Body acceleration
*	MeanOffBodyAccStd_Z		Mean of the standard deviation of fourier transform of Z coordinate of Body acceleration
*	MeanOffBodyAccJerkMean_X	Mean of the mean of fourier transform of X coordinate of Body acceleration jerk 
*	MeanOffBodyAccJerkMean_Y	Mean of the mean of fourier transform of Y coordinate of Body acceleration jerk 
*	MeanOffBodyAccJerkMean_Z	Mean of the mean of fourier transform of Z coordinate of Body acceleration jerk
*	MeanOffBodyAccJerkStd_X		Mean of the standard deviation of fourier transform of X coordinate of Body acceleration jerk 
*	MeanOffBodyAccJerkStd_Y		Mean of the standard deviation of fourier transform of Y coordinate of Body acceleration jerk 
*	MeanOffBodyAccJerkStd_Z		Mean of the standard deviation of fourier transform of Z coordinate of Body acceleration jerk 
*	MeanOffBodyGyroMean_X		Mean of the mean of fourier transform of X coordinate of Body gyro
*	MeanOffBodyGyroMean_Y		Mean of the mean of fourier transform of Y coordinate of Body gyro
*	MeanOffBodyGyroMean_Z		Mean of the mean of fourier transform of Z coordinate of Body gyro
*	MeanOffBodyGyroStd_X		Mean of the standard deviation of fourier transform of X coordinate of Body gyro
*	MeanOffBodyGyroStd_Y		Mean of the standard deviation of fourier transform of Y coordinate of Body gyro
*	MeanOffBodyGyroStd_Z		Mean of the standard deviation of fourier transform of Z coordinate of Body gyro
*	MeanOffBodyAccMagMean		Mean of the mean of fourier transform of Body acceleration magnitude
*	MeanOffBodyAccMagStd		Mean of the standard deviation of fourier transform of Body acceleration magnitude
*	MeanOffBodyAccJerkMagMean	Mean of the mean of fourier transform of Body acceleration jerk magnitude
*	MeanOffBodyAccJerkMagStd	Mean of the standard deviation of fourier transform of Body acceleration jerk magnitude
*	MeanOffBodyGyroMagMean		Mean of the mean of fourier transform of Body gyro magnitude
66.	MeanOffBodyGyroMagStd		Mean of the standard deviation of fourier transform of Body gyro magnitude
67.	MeanOffBodyGyroJerkMagMean	Mean of the mean of fourier transform of Body gyro jerk magnitude
68.	MeanOffBodyGyroJerkMagStd	Mean of the standard deviation of fourier transform of Body gyro jerk magnitude

