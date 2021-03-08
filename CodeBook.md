Code Book for Coursera Getting and Cleaning Data course week 4 assignment

The tidy data are saved in the file named AvaragedData.txt and was created using the script run_analysis.R from the raw data contained in the folder data.
This codebook contains three sections: 
    - **Data structure**, containig the structure of the data
    - **Variables**, containing the description of each variables
    - **Cleaning data**, containig the description of each step performed to obtain the tidy data AvaragedData.txt.
   
**Data structure**
The AvaragedData.txt data file is a text file, containing space-separated values. It is composed by 180 obs. of  81 variables. The first row contains the column variables, which are listed and described 
in the next section. The data from the 3rd column are the average for each subject and each activity listed in the first and second column respectively.
All measurements are floating-point values, normalised and bounded within [-1,1]. Prior to normalisation, acceleration measurements (variables containing 
Accelerometer) were made in g's (9.81 m.s⁻²) and gyroscope measurements (variables containing Gyroscope) were made in radians per second (rad.s⁻¹).
Magnitudes of three-dimensional signals (variables containing Magnitude) were calculated using the Euclidean norm.

**Variables**
1) SubjectId: subject identifiers which is an int. number in the range [1-30]
2) activity: activity name performed by the subject. It can be one of the following 6 activity LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

The other variables can be grouped in the following clusters: 

Average time-domain body acceleration in the X, Y and Z directions:
3) "TimeBodyAccelerometer-mean()-X" 
4) "TimeBodyAccelerometer-mean()-Y"
5) "TimeBodyAccelerometer-mean()-Z"
 
 Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
6) "TimeBodyAccelerometer-std()-X"
7) "TimeBodyAccelerometer-std()-Y"
8)  "TimeBodyAccelerometer-std()-Z" 

Average time-domain gravity acceleration in the X, Y and Z directions:
9)  "TimeGravityAccelerometer-mean()-X" 
10)  "TimeGravityAccelerometer-mean()-Y" 
11)  "TimeGravityAccelerometer-mean()-Z" 

Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
12)  "TimeGravityAccelerometer-std()-X" 
13)  "TimeGravityAccelerometer-std()-Y" 
14)  "TimeGravityAccelerometer-std()-Z" 

Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
15)  "TimeBodyAccelerometerJerk-mean()-X" 
16)  "TimeBodyAccelerometerJerk-mean()-Y" 
17)  "TimeBodyAccelerometerJerk-mean()-Z" 

Standard deviation time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
18)  "TimeBodyAccelerometerJerk-std()-X" 
19)  "TimeBodyAccelerometerJerk-std()-Y" 
20)  "TimeBodyAccelerometerJerk-std()-Z" 

Average time-domain body angular velocity in the X, Y and Z directions:
21)  "TimeBodyGyroscope-mean()-X" 
22)  "TimeBodyGyroscope-mean()-Y" 
23)  "TimeBodyGyroscope-mean()-Z" 

Standard deviation time-domain body angular velocity in the X, Y and Z directions:
24)  "TimeBodyGyroscope-std()-X" 
25)  "TimeBodyGyroscope-std()-Y" 
26)  "TimeBodyGyroscope-std()-Z" 

Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
27)  "TimeBodyGyroscopeJerk-mean()-X" 
28)  "TimeBodyGyroscopeJerk-mean()-Y" 
29)  "TimeBodyGyroscopeJerk-mean()-Z" 

Standard deviation time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
30)  "TimeBodyGyroscopeJerk-std()-X" 
31)  "TimeBodyGyroscopeJerk-std()-Y" 
32)  "TimeBodyGyroscopeJerk-std()-Z" 

Average and standard deviation of the time-domain magnitude of body acceleration:
33)  "TimeBodyAccelerometerMagnitude-mean()" 
34)  "TimeBodyAccelerometerMagnitude-std()" 

 Average and standard deviation of the time-domain magnitude of gravity acceleration:
35)  "TimeGravityAccelerometerMagnitude-mean()" 
36)  "TimeGravityAccelerometerMagnitude-std()" 

Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
37)  "TimeBodyAccelerometerJerkMagnitude-mean()" 
38)  "TimeBodyAccelerometerJerkMagnitude-std()" 

Average and standard deviation of the time-domain magnitude of body angular velocity:
39)  "TimeBodyGyroscopeMagnitude-mean()" 
40)  "TimeBodyGyroscopeMagnitude-std()" 

Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
41)  "TimeBodyGyroscopeJerkMagnitude-mean()" 
42)  "TimeBodyGyroscopeJerkMagnitude-std()" 

Frequency-domain signalsAverage frequency-domain body acceleration in the X, Y and Z directions:
43)  "FrequencyuencyBodyAccelerometer-mean()-X" 
44)  "FrequencyuencyBodyAccelerometer-mean()-Y" 
45)  "FrequencyuencyBodyAccelerometer-mean()-Z" 

Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
46)  "FrequencyuencyBodyAccelerometer-std()-X" 
47)  "FrequencyuencyBodyAccelerometer-std()-Y" 
48)  "FrequencyuencyBodyAccelerometer-std()-Z" 

Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
49)  "FrequencyuencyBodyAccelerometer-meanFrequency()-X" 
50)  "FrequencyuencyBodyAccelerometer-meanFrequency()-Y" 
51)  "FrequencyuencyBodyAccelerometer-meanFrequency()-Z" 

Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
52)  "FrequencyuencyBodyAccelerometerJerk-mean()-X" 
53)  "FrequencyuencyBodyAccelerometerJerk-mean()-Y" 
54)  "FrequencyuencyBodyAccelerometerJerk-mean()-Z" 

Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
55)  "FrequencyuencyBodyAccelerometerJerk-std()-X" 
56)  "FrequencyuencyBodyAccelerometerJerk-std()-Y" 
57)  "FrequencyuencyBodyAccelerometerJerk-std()-Z" 

Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
58)  "FrequencyuencyBodyAccelerometerJerk-meanFrequency()-X" 
59)  "FrequencyuencyBodyAccelerometerJerk-meanFrequency()-Y" 
60)  "FrequencyuencyBodyAccelerometerJerk-meanFrequency()-Z" 

Average frequency-domain body angular velocity in the X, Y and Z directions:
61)  "FrequencyuencyBodyGyroscope-mean()-X" 
62)  "FrequencyuencyBodyGyroscope-mean()-Y" 
63)  "FrequencyuencyBodyGyroscope-mean()-Z" 

Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
64)  "FrequencyuencyBodyGyroscope-std()-X" 
65)  "FrequencyuencyBodyGyroscope-std()-Y" 
66)  "FrequencyuencyBodyGyroscope-std()-Z" 

Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
67)  "FrequencyuencyBodyGyroscope-meanFrequency()-X" 
68)  "FrequencyuencyBodyGyroscope-meanFrequency()-Y" 
69)  "FrequencyuencyBodyGyroscope-meanFrequency()-Z" 

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
70)  "FrequencyuencyBodyAccelerometerMagnitude-mean()" 
71)  "FrequencyuencyBodyAccelerometerMagnitude-std()" 
72)  "FrequencyuencyBodyAccelerometerMagnitude-meanFrequency()" 

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
73)  "FrequencyuencyBodyBodyAccelerometerJerkMagnitude-mean()" 
74)  "FrequencyuencyBodyBodyAccelerometerJerkMagnitude-std()" 
75)  "FrequencyuencyBodyBodyAccelerometerJerkMagnitude-meanFrequency()" 

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
76)  "FrequencyuencyBodyBodyGyroscopeMagnitude-mean()" 
77)  "FrequencyuencyBodyBodyGyroscopeMagnitude-std()" 
78)  "FrequencyuencyBodyBodyGyroscopeMagnitude-meanFrequency()" 

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
79)  "FrequencyuencyBodyBodyGyroscopeJerkMagnitude-mean()" 
80)  "FrequencyuencyBodyBodyGyroscopeJerkMagnitude-std()" 
81)  "FrequencyuencyBodyBodyGyroscopeJerkMagnitude-meanFrequency()"


**Cleaning data**
The raw data are contained in a zip file located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
Once unzipper, the folder UCI HAR Dataset is created and it contains: 2 subfolders for the test and the train group and 4 text files; 
the activity_labels.txt with the activity names, the features.txt and features_info.txt with the features names and some info, the README.txt file.

The folder train contains: X_train.txt with the values registred for the different activities for each subject, y_train.txt containig the activity id for the file X_train.txt and
subject_train.txt with the subject id labelling the X_train.txt. 
There is also the folder Inertial Signals containing: 
  -'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
  - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
  - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
The test folder has the same structure.

Procedure:
1) Assign column names for X_* from features.txt and substitute the activity id in y_* with the activity name from activity_labels.txt
2) Merge the y_*, subject_* and X_* datasets by columns to form two datasets for the train and test group with column names "activity", "subjectId" and colname(X_*).
3) Join the two datasets test and train to form a unique database "tidydata"
4) Extracts only the measurements on the mean and standard deviation for each measurement selecting the columns containing "mean.." or "std.." from tidydata, to create STandMEAN dataset.
5) Change the variable names in STandMEAN to have descriptive names (e.g. tBodyAcc-mean()-X was expanded to timeBodyAccelerometermeanX)
6) From the data STandMEAN, the final data set was created with the average of each variable for each activity and each subject and it is stored in AvaragedData.txt.
