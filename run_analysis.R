###########################################################################################
#Peer-graded Assignment: Getting and Cleaning Data Course Project Version 1.0
#Author: Jeff Charatan
###########################################################################################

library(dplyr)

###########################################################################################
# Prework
# Download and unzip input files to local drive 
# Read (7) input files into local variables for processing
###########################################################################################

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

unzip(zipfile="./data/Dataset.zip",exdir="./data")

filePath <- file.path("./data" , "UCI HAR Dataset")
projectFiles<-list.files(filePath, recursive=TRUE)
projectFiles

dateDownloaded <- date()
dateDownloaded

activityTest  <- read.table(file.path(filePath, "test", "Y_test.txt" ),header = FALSE)
activityTrain <- read.table(file.path(filePath, "train", "Y_train.txt"),header = FALSE)

subjectTest  <- read.table(file.path(filePath, "test" , "subject_test.txt"),header = FALSE)
subjectTrain <- read.table(file.path(filePath, "train", "subject_train.txt"),header = FALSE)

featuresTest  <- read.table(file.path(filePath, "test" , "X_test.txt" ),header = FALSE)
featuresTrain <- read.table(file.path(filePath, "train", "X_train.txt"),header = FALSE)

# read activity labels
activities <- read.table(file.path(filePath, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")

dim(activityTest)
dim(activityTrain)
dim(subjectTest)
dim(subjectTrain)
dim(featuresTest)


str(activityTest)
str(activityTrain)
str(subjectTest)
str(subjectTrain)
str(featuresTest)
str(featuresTrain)

###########################################################################################
#1. Merges the training and the test sets to create one data set.
###########################################################################################
activity<- rbind(activityTrain, activityTest)
subject <- rbind(subjectTrain, subjectTest)
features<- rbind(featuresTrain, featuresTest)

#Provide Meaningful Column Names from 'features.txt' file
featuresNames <- read.table(file.path(filePath, "features.txt"),head=FALSE)
names(features) <- featuresNames$V2

names(subject)<-c("subject")
names(activity) <- c("activity")

#Merge columns using cbind()
masterMerge <- cbind(activity,subject, features)
#dim(masterMerge)

###########################################################################################
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
###########################################################################################
subsetMeanStd<-featuresNames$V2[grep ("mean\\(|std\\(", featuresNames$V2, 
                           ignore.case = T, value = F)]
namesSubset<- c(as.character(subsetMeanStd),"subject","activity")
masterMerge<-subset(masterMerge, select = namesSubset)
#dim(masterMerge)

###########################################################################################
#3. Uses descriptive activity names to name the activities in the data set
###########################################################################################

masterMerge$activity <- factor(masterMerge$activity, 
                               levels = activities[,1],labels = activities[,2])

###########################################################################################
#4. Appropriately labels the data set with descriptive variable names.
###########################################################################################

names(masterMerge)<-gsub("^t", "time", names(masterMerge))
names(masterMerge)<-gsub("^f", "frequency", names(masterMerge))
names(masterMerge)<-gsub("Acc", "Accelerometer", names(masterMerge))
names(masterMerge)<-gsub("Gyro", "Gyroscope", names(masterMerge))
names(masterMerge)<-gsub("Mag", "Magnitude", names(masterMerge))
names(masterMerge)<-gsub("BodyBody", "Body", names(masterMerge))
names(masterMerge)<-gsub("\\()","",names(masterMerge))


###########################################################################################
#5. From the data set in step 4, creates a second, independent tidy data set with the
#   average of each variable for each activity and each subject.
###########################################################################################

write.table(masterMerge,"masterMerge.txt", row.names = FALSE)

masterMergeMeanStd <- masterMerge %>% group_by(subject, activity) %>%
        summarise_if( is.numeric, funs(mean))

str(masterMergeMeanStd)
write.table(masterMergeMeanStd,"IndependentTidyDataSet.txt", row.names = FALSE)
