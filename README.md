NN-Cleaning-Data-Course-Project
===============================


This repository contains the code for a course-project for the course Getting and Cleaning Data.


OriginalData directory contains the data that was extracted from the [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) from the [course website](https://class.coursera.org/getdata-004/human_grading/view/courses/972137/assessments/3/submissions).


run_analysis.R file contains an R script that downloads the zip file into the _Samsung_ folder in the current working directory and produces a file called _TidyDataSet.txt_.

To run the script in run_analysis.R 
* Open R Studio on a Windows 8.1 system
* If samsung folder exists in your working directory delete it or empty it
* source(run_analysis.R)
* library(reshape2)
* CleanData()

TidyDatSet.txt contains the cleaned data obtained as a result of running run_analysis.R.
