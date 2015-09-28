# Summary

This is a code book that describes the variables, the experiment, the data, and transformations performed to clean up the data.

## Data source

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Experiment info

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## The data

The dataset includes the following files:

- README.txt: Read me.

- features_info.txt: Information regarding the variables used in the feature vector.

- features.txt: List of all features.

- activity_labels.txt: Class labels to activity name.

- train/x_train.txt: Training set.

- train/y_train.txt: Training labels.

- test/x_test.txt: Test set.

- test/y_test.txt: Test labels.

- train/subject_train.txt: Subject who performed the activity. 

- train/Inertial Signals/total_acc_x_train.txt, total_acc_y_train.txt, total_acc_z_train.txt:  Acceleration signal from the smartphone accelerometer X, Y,Z axises. 

- train/Inertial Signals/body_acc_x_train.txt, body_acc_y_train.txt, body_acc_z_train.txt: Body acceleration signal obtained by subtracting the gravity from the total acceleration in X,Y,X axises.

- train/Inertial Signals/body_gyro_x_train.txt, body_gyro_y_train.txt, body_gyro_z_train.txt : The angular velocity vector measured by the gyroscope in X,Y,X axises.

- test/Inertial Signals/total_acc_x_test.txt, total_acc_y_test.txt, total_acc_z_test.txt:  Acceleration signal from the smartphone accelerometer X, Y,Z axises. 

- test/Inertial Signals/body_acc_x_test.txt, body_acc_y_test.txt, body_acc_z_test.txt: Body acceleration signal obtained by subtracting the gravity from the total acceleration in X,Y,X axises.

- test/Inertial Signals/body_gyro_x_test.txt, body_gyro_y_test.txt, body_gyro_z_test.txt : The angular velocity vector measured by the gyroscope in X,Y,X axises.



## Data transformation details

1. Extracts only the measurements on the mean and standard deviation for each measurement;
2. Uses descriptive activity names to name the activities in the data set;
3. Appropriately labels the data set with descriptive activity names;
4. Merges the training and the test sets to create one data set;
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Implementation of the above steps in ```run_analysis.R```

1.Load both test and training data;

2.Load features and activity labels;

3.Extract mean and standard deviation column names and data;

4.Process test and training data respectively;

5.Merge test and trainning data set;

6.Creates the final tidy data.
