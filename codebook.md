---
title: "Codebook - Getting and Cleaning Data Course Project"
author: "Jeff Charatan"
date: "4/5/2019"
output:
  IndependentTidyDataSet.txt
---

## Project Description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 


## Data Source
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


## Dataset Detail
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


## Data Inputs & Ingestion

While the ZIP input file contains numerous datasets, this project will only require the following (7) files. 

- test/y_test.txt: Test-Activity
- train/y_train.txt: Training-Activity
- test/subject_test.txt: Test-Subject
- train/subject_train.txt: Training-Subject
- test/X_test.txt: Test-Features
- train/X_train.txt: Training-Features
- activity_labels.txt: Links the class labels with their activity name.

Load the (7) files into corresponding Data Frames

- activityTest
- activityTrain
- subjectTest
- subjectTrain
- featuresTest
- featuresTrain
- activities


## Transformations
### Merges the training and the test sets to create one data set.

- Leverage rbind() function to merge test and training data frames for activity, subject and features
- Provide meaningful feature column names using the 'features.txt' file
- Merge activity, subject and feature data frames into a new data frame called 'masterMerge' using the cbind() function
- Output produces 10299 observations and 563 variables

### Extracts only the measurements on the mean and standard deviation for each measurement.

- Leverage grep() function to find columns measuring mean & standard deviation
- Use subset() function to update 'masterMerge' with ONLY mean & standard deviation columns
- Output produces 10299 observations and 68 variables


### Uses descriptive activity names to name the activities in the data set

- Use factor() function to replace activity 'levels' with activity descriptions/lables that were loaded earlier

### Appropriately labels the data set with descriptive variable names

- Use names() & gsub() functions to find and replace column names in need of a better description
- Changed columns headings starting with 't' to start with 'time'
- Changed columns headings starting with 'f' to start with 'frequency'
- Changed columns headings containing 'Acc' and replaced 'Acc' with 'Accelerometer'
- Changed columns headings containing 'Gyro' and replaced 'Gyro' with 'Gyroscope'
- Changed columns headings containing 'Mag' and replaced 'Mag' with 'Magnitude'
- Removed function brackets '()' from column names 

### Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- Using 'masterMerge' as input leverage group_by() and summarise_if() functions to create a new data frame 'masterMergeMeanStd
- 'masterMergeMeanStd' contains the average of each variable 
- Use write.table() function to create a second independent tidy data set
- Output produces 180 observations and 68 variables
- File Name: 'IndependentTidyDataSet.txt'


### Tidy Dataset
- subject
- activity
- timeBodyAccelerometer-mean-X
- timeBodyAccelerometer-mean-Y
- timeBodyAccelerometer-mean-Z
- timeBodyAccelerometer-std-X
- timeBodyAccelerometer-std-Y
- timeBodyAccelerometer-std-Z
- timeGravityAccelerometer-mean-X
- timeGravityAccelerometer-mean-Y
- timeGravityAccelerometer-mean-Z
- timeGravityAccelerometer-std-X
- timeGravityAccelerometer-std-Y
- timeGravityAccelerometer-std-Z
- timeBodyAccelerometerJerk-mean-X
- timeBodyAccelerometerJerk-mean-Y
- timeBodyAccelerometerJerk-mean-Z
- timeBodyAccelerometerJerk-std-X
- timeBodyAccelerometerJerk-std-Y
- timeBodyAccelerometerJerk-std-Z
- timeBodyGyroscope-mean-X
- timeBodyGyroscope-mean-Y
- timeBodyGyroscope-mean-Z
- timeBodyGyroscope-std-X
- timeBodyGyroscope-std-Y
- timeBodyGyroscope-std-Z
- timeBodyGyroscopeJerk-mean-X
- timeBodyGyroscopeJerk-mean-Y
- timeBodyGyroscopeJerk-mean-Z
- timeBodyGyroscopeJerk-std-X
- timeBodyGyroscopeJerk-std-Y
- timeBodyGyroscopeJerk-std-Z
- timeBodyAccelerometerMagnitude-mean
- timeBodyAccelerometerMagnitude-std
- timeGravityAccelerometerMagnitude-mean
- timeGravityAccelerometerMagnitude-std
- timeBodyAccelerometerJerkMagnitude-mean
- timeBodyAccelerometerJerkMagnitude-std
- timeBodyGyroscopeMagnitude-mean
- timeBodyGyroscopeMagnitude-std
- timeBodyGyroscopeJerkMagnitude-mean
- timeBodyGyroscopeJerkMagnitude-std
- frequencyBodyAccelerometer-mean-X
- frequencyBodyAccelerometer-mean-Y
- frequencyBodyAccelerometer-mean-Z
- frequencyBodyAccelerometer-std-X
- frequencyBodyAccelerometer-std-Y
- frequencyBodyAccelerometer-std-Z
- frequencyBodyAccelerometerJerk-mean-X
- frequencyBodyAccelerometerJerk-mean-Y
- frequencyBodyAccelerometerJerk-mean-Z
- frequencyBodyAccelerometerJerk-std-X
- frequencyBodyAccelerometerJerk-std-Y
- frequencyBodyAccelerometerJerk-std-Z
- frequencyBodyGyroscope-mean-X
- frequencyBodyGyroscope-mean-Y
- frequencyBodyGyroscope-mean-Z
- frequencyBodyGyroscope-std-X
- frequencyBodyGyroscope-std-Y
- frequencyBodyGyroscope-std-Z
- frequencyBodyAccelerometerMagnitude-mean
- frequencyBodyAccelerometerMagnitude-std
- frequencyBodyAccelerometerJerkMagnitude-mean
- frequencyBodyAccelerometerJerkMagnitude-std
- frequencyBodyGyroscopeMagnitude-mean
- frequencyBodyGyroscopeMagnitude-std
- frequencyBodyGyroscopeJerkMagnitude-mean
- frequencyBodyGyroscopeJerkMagnitude-std




