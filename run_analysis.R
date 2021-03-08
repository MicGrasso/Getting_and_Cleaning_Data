#
## A) Set up the data set
### 0. Get the data

#### 0.1 set the url and load the library
library("downloader") #package to download files (use install.packages("downloader"))
url <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#### 0.2 Check if folder called "data" exists. If not, create the folder. 
if(!dir.exists(file.path(getwd(), "data"))){
        dir.create(file.path(getwd(), "data"))
} else{
        message("directory data exists")
}

##### 0.3 Download and unzip the file IF it is not in the folder.
if (!file.exists("dataset.zip")){
        download(url, dest="dataset.zip", mode="wb") 
        unzip ("dataset.zip", exdir = "./data")
}

#### 0.4 set the path to the data in the data folder
pathdata <- file.path("./data", "UCI HAR Dataset")     
files <- list.files(pathdata, recursive=TRUE)    

# The files are:
# 'features.txt': List of all features.
# 'activity_labels.txt': Links the class labels with their activity name.
# 'train/X_train.txt': Training set.
# 'train/y_train.txt': Training labels.
# 'test/X_test.txt': Test set.
# 'test/y_test.txt': Test labels.
# 'train/subject_train.txt': Each row identifies the subject who performed 
#       the activity for each window sample. Its range is from 1 to 30. 
#
# For each subject listed in subject_train.txt, the X_train contains the features
# for the train group, whose column's name are listed in features.txt.
# The rows are labeled by y_train. The same for the test group.

#### 0.5 Create and set up the two datasets for the train and test group:
##### 0.5.1 read training and test tables - X_*, y_*, subject_*
xtrain <- read.table(file.path(pathdata, "train", "X_train.txt"),header = FALSE)
xtest <- read.table(file.path(pathdata, "test", "X_test.txt"),header = FALSE)
ytrain <- read.table(file.path(pathdata, "train", "y_train.txt"),header = FALSE)
ytest <- read.table(file.path(pathdata, "test", "y_test.txt"),header = FALSE)
subject_train <- read.table(file.path(pathdata, "train", "subject_train.txt"),header = FALSE)
subject_test <- read.table(file.path(pathdata, "test", "subject_test.txt"),header = FALSE)

##### 0.5.2 read features and activity labels
features <- read.table(file.path(pathdata, "features.txt"), header = FALSE)
activityLabels <- read.table(file.path(pathdata, "activity_labels.txt"),header = FALSE)

##### 0.5.3 set up the colnames for X_*, subject_*
colnames(xtrain) <- features[,2]
colnames(xtest) <- features[,2]
colnames(subject_train) <- "subjectId"
colnames(subject_test) <- "subjectId"

##### 0.5.4 substitute the activity identifier in ytrain and ytest with the 
#       activity name in activityLabels.
# This is point 3 of the assignment.
ytrain[[1]] <- activityLabels[ match(ytrain[[1]], activityLabels[[1]] ) , 2]
ytest[[1]] <- activityLabels[ match(ytest[[1]], activityLabels[[1]] ) , 2]
colnames(ytrain) <- "activity"
colnames(ytest) <- "activity"

##### 0.5.4 create the two datasets
train <- cbind(ytrain, subject_train, xtrain)
test <- cbind(ytest, subject_test, xtest)

## B) Assignments
### 1. Merges the training and the test sets to create one data set.
tidydata <- rbind(train, test)

### 2. Extracts only the measurements on the mean and standard deviation 
#       for each measurement.
colNames <- colnames(tidydata)
colSelect <- (grepl("activity" , colNames) | grepl("subjectId" , colNames) |
                        grepl("mean.." , colNames) | grepl("std.." , colNames))

STandMEAN <- tidydata[ , colSelect]

### 3. Uses descriptive activity names to name the activities in the data set
# This was done at 0.5.4

### 4. Appropriately labels the data set with descriptive variable names. 
# This means to explicit abbreviations like "Acc", "Gyro", "Mag", "t", "f" as 
# "Acceleration", "Gyroscope", "Magnitude", "time", "frequency" in the features
# names

names(STandMEAN)<-gsub("Acc", "Accelerometer", names(STandMEAN))
names(STandMEAN)<-gsub("Gyro", "Gyroscope", names(STandMEAN))
names(STandMEAN)<-gsub("Mag", "Magnitude", names(STandMEAN))
names(STandMEAN)<-gsub("^t", "Time", names(STandMEAN))
names(STandMEAN)<-gsub("^f", "Frequency", names(STandMEAN))
names(STandMEAN)<-gsub("Freq", "Frequency", names(STandMEAN))
names(STandMEAN)<-gsub("tBody", "TimeBody", names(STandMEAN))
names(STandMEAN)<-gsub("fBody", "FrequencyBody", names(STandMEAN))

### 5. From the data set in step 4, creates a second, independent tidy data set
#       with the average of each variable for each activity and each subject.

#### 5.1 Use aggregate function to compute the mean for each activity and each subject 
AvarageDataset <- aggregate(. ~subjectId + activity, STandMEAN, mean)

#### 5.2 Save the dataset to file.
write.table(AvarageDataset, file = "AvaragedData.txt", row.names = FALSE)