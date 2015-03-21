##Download file to working directory, and unzip using the 
##unzip() function.

require(plyr)

## Merges the training and the test sets to create one data set.

trainingData <- read.table(".//train//X_train.txt")
dim(trainingData)
head(trainingData)
trainingLabels <- read.table(".//train//y_train.txt")
table(trainingLabels)
trainingSubject <- read.table(".//train//subject_train.txt")

testData <- read.table(".//test//X_test.txt")
dim(testData)
head(testData)
testLabels <- read.table(".//test//y_test.txt")
table(testLabels)
testSubject <- read.table(".//test//subject_test.txt")

mData <- rbind(trainingData, testData)
dim(mData)
mLabels <- rbind(trainingLabels, testLabels)
mSubject <- rbind(trainingSubject, testSubject)


##Extracts only the measurements on the mean and 
##standard deviation for each measurement. 

features <- read.table("features.txt")
dim(features)
head(features)

mean_std <- grep("mean\\(\\)|std\\(\\)", features[, 2])
mData <- mData[, mean_std]
dim(mData)
head(mData)

names(mData) <- gsub("\\(\\)", "", features[mean_std, 2]) 
names(mData) <- gsub("mean", "Mean", names(mData))
names(mData) <- gsub("std", "Std", names(mData))
names(mData) <- gsub("-", "", names(mData))


##Uses descriptive activity names to name the activities in the 
##data set

activity <- read.table("activity_labels.txt")
activity_labels <- merge(mLabels, activity, by="V1")
names(activity_labels) <- c("Activity Number", "Activity Name")


##Appropriately labels the data set with descriptive variable 
##names. 

names(mSubject) <- "Subject Number"
fullData <- cbind(mSubject, activity_labels, mData)
dim(fullData)
head(fullData)

##From the data set in step 4, creates a second, independent tidy
##data set with the average of each variable for each activity 
##and each subject.

finalData <- ddply(fullData, .(fullData[,1], fullData[,3]), function(x) colMeans(x[,4:69]))

write.Table(finalData, "finalData.txt", row.names=FALSE)