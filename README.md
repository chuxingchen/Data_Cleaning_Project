#Getting and Cleaning Data: Course Project
You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#Summary

This repository contains the course project for the Coursera course "Getting and Cleaning data" 


#Data source

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


#Script 

run_analysis.R


#Instructions

1. The UCI HAR Dataset, which is in directory "./UCI HAR Dataset", is extracted with only the measurements on the mean and standard deviation for each measurement.
2. Appropriate labels are added
3. Test and Train data are merged, and labels are added.
4. A tidy data set containing the means of all the columns per test subject and per activity is created
5. The tidy dataset is written to a tab-delimited file called "tidy_data.txt", in the same directory.


# Tidy dataset

tidy_data.txt


About the Code Book
-------------------
The CodeBook.md file explains the transformations performed and the resulting data and variables.
