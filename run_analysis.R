##
# script: run_analysis.R
# author: Juan R Musumeci
# date created: 08/16/2015
#
# Course: Coursera-Getting and Cleaning Data Course
##
##
# Note: tested on Windows 8/10
#       for Mac or Linux some menor corrections might be necessary
#
# Description
# This script perform the following steps on:
#                the Human Activity Recognition Using Smartphones Data Set 
#                Data collected from the accelerometers from Samsung Galaxy S smartphone
#                https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#

library(reshape2)

##################### read downloaded data
# define working directories
rootPath <- "UCI HAR Dataset"
testPath <- "UCI HAR Dataset/test"
trainPath<- "UCI HAR Dataset/train"

# read activities names and features
dataActivities <- read.table(file.path(rootPath,"activity_labels.txt"),header = FALSE)
dataFeatures   <- read.table(file.path(rootPath,"features.txt"),header = FALSE)
# Assign column names
colnames(dataActivities) <- c("ActivityId","ActivityType")
colnames(dataFeatures)   <- "SubjectId"

# read training data -> name its columns and merge to conform one observable 
dataY       <- read.table(file.path(trainPath , "y_train.txt" ),header = FALSE)
dataX       <- read.table(file.path(trainPath , "X_train.txt" ),header = FALSE)
subjectData <- read.table(file.path(trainPath , "subject_train.txt" ),header = FALSE)

colnames(subjectData)  <- "SubjectId"
colnames(dataX)        <- dataFeatures[,2]
colnames(dataY)       <- "ActivityId"

trainData = cbind(dataY,subjectData,dataX)

# read test data -> name its columns and merge to conform one observable 
dataY       <- read.table(file.path(testPath , "y_test.txt" ),header = FALSE)
dataX       <- read.table(file.path(testPath , "X_test.txt" ),header = FALSE)
subjectData <- read.table(file.path(testPath , "subject_test.txt" ),header = FALSE)

colnames(subjectData)  <- "SubjectId"
colnames(dataX)        <- dataFeatures[,2]
colnames(dataY)        <- "ActivityId"

testData = cbind(dataY,subjectData,dataX)

##################### 1. Merges the training and the test sets
allData = rbind(trainData,testData)

##################### 2. Extracts only the measurements on the mean and standard deviation
nameCols <- c("ActivityId", "SubjectId", colnames(allData)[grep("mean()|std()",colnames(allData))])
allData  <- allData[,nameCols]

##################### 3. Uses descriptive activity names to name the activities in the data set
allData = merge(allData,dataActivities,by="ActivityId",all.x=TRUE)

##################### 4. Appropriately labels the data set with descriptive activity names
nameColumn <- character()
for (c in colnames(allData)) {
  c <- gsub("^t","Time",c)
  c <- gsub("^f","Freq",c)
  c <- gsub("mean","Mean",c)
  c <- gsub("std","StdDev",c)
  c <- gsub("\\()","",c)
  c <- gsub("Mag","Magnitude",c)
  nameColumn <- c(nameColumn,c)
}
colnames(allData) <- nameColumn

##################### 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
workData <- allData[,names(allData) != "ActivityType"] 
workData <- melt(workData, id = c("ActivityId", "SubjectId"))
tidyData <- dcast(workData, ActivityId + SubjectId ~ variable, mean)

# Add Activity descriptor and move it as a second column
tidyData <- merge(tidyData,dataActivities,by="ActivityId",all.x=TRUE)
tidyData <- tidyData[,c(1,ncol(tidyData),2:(ncol(tidyData)-1))]
# Save dataset
write.table(tidyData, "tidydata.txt",row.names = FALSE ,sep="\t")
