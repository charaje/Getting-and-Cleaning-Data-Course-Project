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


## Data Inputs

While the ZIP input file contains numerous datasets, this project will only require the following (7) files. 

- README.txt
- features_info.txt: Shows information about the variables used on the feature vector.
- features.txt: List of all features.
- activity_labels.txt: Links the class labels with their activity name.
- train/X_train.txt: Training set.
- train/y_train.txt: Training labels.
- test/X_test.txt: Test set.
- test/y_test.txt: Test labels.






## Tidy Dataset

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











##Study design and data processing

###Collection of the raw data
Description of how the data was collected.

###Notes on the original (raw) data 
Some additional notes (if avaialble, otherwise you can leave this section out).

##Creating the tidy datafile

###Guide to create the tidy data file
Description on how to create the tidy data file (1. download the data, ...)/

###Cleaning of the data
Short, high-level description of what the cleaning script does. [link to the readme document that describes the code in greater detail]()

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)
