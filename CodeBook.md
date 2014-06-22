# Code book
===================================

The raw data for the project was downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Information about that data can be obtained from [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

After downloading the files i did the following to extract the tidy dataset.
1. Merge the training and test data
2. Extracted only the mean and standard deviation for each measurement
3. Assigned descriptive names to the columns of the dataset
4. Created the independant tidy dataset with the average of each variable for each activity by each subject

The R script run_analysis.R does the above mentioned actions along with download of the files and un-zipping of the zip files. 

For descriptive names, i have used the following transforms on the featurenames provided in the original data's features.txt to create the column-names of the tidy dataset
1. -mean() replaced by Mean
2. -std() replaced by Std
3. BodyBody replaced by Body (having BodyBody is a typo in the original dataset)
4. -X replaced by _X
5. -Y replaced by _Y
6. -Z replaced by _Z

Column names and detailed descriptions
1.	SubjectId			Identifier of the subject
2.	ActivityName			Name of the Activity
3.	MeanOftBodyAccMean_X		Mean of the mean of X coordinate readings of body acceleration
4.	MeanOftBodyAccMean_Y		Mean of the mean of Y coordinate readings of body acceleration
5.	MeanOftBodyAccMean_Z		Mean of the mean of Z coordinate readings of body acceleration
6.	MeanOftBodyAccStd_X		Mean of the standard deviation of X coordinate readings of body acceleration
7.	MeanOftBodyAccStd_Y		Mean of the standard deviation  of Y coordinate readings of body acceleration
8.	MeanOftBodyAccStd_Z		Mean of the standard deviation  of Z coordinate readings of body acceleration
9.	MeanOftGravityAccMean_X		Mean of the mean of X coordinate readings of gravitational acceleration 
10.	MeanOftGravityAccMean_Y		Mean of the mean of Y coordinate readings of gravitational acceleration 
11.	MeanOftGravityAccMean_Z		Mean of the mean of Z coordinate readings of gravitational acceleration 
12.	MeanOftGravityAccStd_X		Mean of the standard deviation of X coordinate readings of gravitational acceleration 
13.	MeanOftGravityAccStd_Y		Mean of the standard deviation of Y coordinate readings of gravitational acceleration 
14.	MeanOftGravityAccStd_Z		Mean of the standard deviation of Z coordinate readings of gravitational acceleration 
15.	MeanOftBodyAccJerkMean_X	Mean of the mean of X coordinate readings of body acceleration jerk 
16.	MeanOftBodyAccJerkMean_Y	Mean of the mean of Y coordinate readings of body acceleration jerk 
17.	MeanOftBodyAccJerkMean_Z	Mean of the mean of Z coordinate readings of body acceleration jerk 
18.	MeanOftBodyAccJerkStd_X		Mean of the standard deviation of X coordinate readings of body acceleration jerk 
19.	MeanOftBodyAccJerkStd_Y		Mean of the standard deviation of Y coordinate readings of body acceleration jerk 
20.	MeanOftBodyAccJerkStd_Z		Mean of the standard deviation of Z coordinate readings of body acceleration jerk 
21.	MeanOftBodyGyroMean_X		Mean of the mean of X coordinate readings of body gyro
22.	MeanOftBodyGyroMean_Y		Mean of the mean of Y coordinate readings of body gyro
23.	MeanOftBodyGyroMean_Z		Mean of the mean of Z coordinate readings of body gyro
24.	MeanOftBodyGyroStd_X		Mean of the standard deviation of X coordinate readings of body gyro
25.	MeanOftBodyGyroStd_Y		Mean of the standard deviation of Y coordinate readings of body gyro
26.	MeanOftBodyGyroStd_Z		Mean of the standard deviation of Z coordinate readings of body gyro
27.	MeanOftBodyGyroJerkMean_X	Mean of the mean of X coordinate readings of body gyro jerk
28.	MeanOftBodyGyroJerkMean_Y	Mean of the mean of Y coordinate readings of body gyro jerk
29.	MeanOftBodyGyroJerkMean_Z	Mean of the mean of Z coordinate readings of body gyro jerk
30.	MeanOftBodyGyroJerkStd_X	Mean of the standard deviation of X coordinate readings of body gyro jerk
31.	MeanOftBodyGyroJerkStd_Y	Mean of the standard deviation of Y coordinate readings of body gyro jerk
32.	MeanOftBodyGyroJerkStd_Z	Mean of the standard deviation of Z coordinate readings of body gyro jerk
33.	MeanOftBodyAccMagMean		Mean of the mean of Body acceleration magnitude
34.	MeanOftBodyAccMagStd		Mean of the standard deviation of Body acceleration magnitude
35.	MeanOftGravityAccMagMean	Mean of the mean of gravitational acceleration magnitude
36.	MeanOftGravityAccMagStd		Mean of the standard deviation of gravitational acceleration magnitude
37.	MeanOftBodyAccJerkMagMean	Mean of the mean of Body acceleration jerk magnitude
38.	MeanOftBodyAccJerkMagStd	Mean of the standard deviation of Body acceleration jerk magnitude
39.	MeanOftBodyGyroMagMean		Mean of the mean of Body gyro magnitude
40.	MeanOftBodyGyroMagStd		Mean of the standard deviation of the Body gyro magnitude
41.	MeanOftBodyGyroJerkMagMean	Mean of the mean of Body gyro jerk magnitude
42.	MeanOftBodyGyroJerkMagStd	Mean of the standard deviation of the Body gyro jerk magnitude
43.	MeanOffBodyAccMean_X		Mean of the mean of fourier transform of X coordinate of Body acceleration
44.	MeanOffBodyAccMean_Y		Mean of the mean of fourier transform of Y coordinate of Body acceleration
45.	MeanOffBodyAccMean_Z		Mean of the mean of fourier transform of Z coordinate of Body acceleration
46.	MeanOffBodyAccStd_X		Mean of the standard deviation of fourier transform of X coordinate of Body acceleration
47.	MeanOffBodyAccStd_Y		Mean of the standard deviation of fourier transform of Y coordinate of Body acceleration
48.	MeanOffBodyAccStd_Z		Mean of the standard deviation of fourier transform of Z coordinate of Body acceleration
49.	MeanOffBodyAccJerkMean_X	Mean of the mean of fourier transform of X coordinate of Body acceleration jerk 
50.	MeanOffBodyAccJerkMean_Y	Mean of the mean of fourier transform of Y coordinate of Body acceleration jerk 
51.	MeanOffBodyAccJerkMean_Z	Mean of the mean of fourier transform of Z coordinate of Body acceleration jerk
52.	MeanOffBodyAccJerkStd_X		Mean of the standard deviation of fourier transform of X coordinate of Body acceleration jerk 
53.	MeanOffBodyAccJerkStd_Y		Mean of the standard deviation of fourier transform of Y coordinate of Body acceleration jerk 
54.	MeanOffBodyAccJerkStd_Z		Mean of the standard deviation of fourier transform of Z coordinate of Body acceleration jerk 
55.	MeanOffBodyGyroMean_X		Mean of the mean of fourier transform of X coordinate of Body gyro
56.	MeanOffBodyGyroMean_Y		Mean of the mean of fourier transform of Y coordinate of Body gyro
57.	MeanOffBodyGyroMean_Z		Mean of the mean of fourier transform of Z coordinate of Body gyro
58.	MeanOffBodyGyroStd_X		Mean of the standard deviation of fourier transform of X coordinate of Body gyro
59.	MeanOffBodyGyroStd_Y		Mean of the standard deviation of fourier transform of Y coordinate of Body gyro
60.	MeanOffBodyGyroStd_Z		Mean of the standard deviation of fourier transform of Z coordinate of Body gyro
61.	MeanOffBodyAccMagMean		Mean of the mean of fourier transform of Body acceleration magnitude
62.	MeanOffBodyAccMagStd		Mean of the standard deviation of fourier transform of Body acceleration magnitude
63.	MeanOffBodyAccJerkMagMean	Mean of the mean of fourier transform of Body acceleration jerk magnitude
64.	MeanOffBodyAccJerkMagStd	Mean of the standard deviation of fourier transform of Body acceleration jerk magnitude
65.	MeanOffBodyGyroMagMean		Mean of the mean of fourier transform of Body gyro magnitude
66.	MeanOffBodyGyroMagStd		Mean of the standard deviation of fourier transform of Body gyro magnitude
67.	MeanOffBodyGyroJerkMagMean	Mean of the mean of fourier transform of Body gyro jerk magnitude
68.	MeanOffBodyGyroJerkMagStd

