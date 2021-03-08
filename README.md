Coursera Getting and Cleaning Data course: assignment week 4

The purpose of the assignment is to collect, work with, and clean a data set. 
The data are collected from the Human Activity Recognition Using Smartphones Data Set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
containing the outcome from wearable computers collected in an experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, the authors captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
See data/UCI HAR Dataset/README.txt for more details once you have run the script. 

This repository contains the following files:

1) README.md, which provides a description on the script run_analysis.R used to create the data set "AvaragedData.txt". 
2) AvaragedData.txt, which contains the data set.
3) CodeBook.md, the code book describing the contents of the data set (data structure, variable names and Cleaning data process). 
4) run_analysis.R, the R script that was used to create the data set 

The data set was created using run_analysis.R. The script can be devided in two parts:
  A) Setting up the data set
  B) Assignments
  
  In the first part (A) the following operations are performed:
      1. Check if a folder called "data" is present and if not it creates one.
      2. Check if the zip file is present, if not it downloads the file from the url and unzip it.
      3. Set the path to the data in the data folder
      4. Read the files in the train and test called X_*, y_*, subject_*
      5. Set up the column names for X_* from features.txt
      6. Substitute the activity id in y_* with the descriptive names from activity_labels.txt
          This is point 3 in the project assignment, but I found more useful to do it at this point.
      7. join together y_*, subject_* and X_* to create two data set for the train and test groups.
        train <- cbind(ytrain, subject_train, xtrain)
        test <- cbind(ytest, subject_test, xtest)
  
  The second part of the script (B) performs the assignments requests:
      1. Merges the train and the test sets to create one data set called tidydata.
      2. Extracts only the measurements on the mean and standard deviation for each measurement
      3. Change the features names to be more descriptive, i.e. change abbreviations 
            "Acc"   ->   "Accelerometer"
            "Gyro"  ->   "Gyroscope"
            "Mag"   ->   "Magnitude"
            "^t"    ->   "Time"
            "^f"    ->   "Frequency"
            "Freq"  ->   "Frequency"
            "tBody" ->   "TimeBody"
            "fBody" ->   "FrequencyBody"
      4. Creates a second, independent tidy data set with the average of each variable 
      for each activity and each subject and create AvarageDataset.
      5. Save the data frame as "AvarageDataset.txt"
      
