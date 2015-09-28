### --------------

#You should create one R script called run_analysis.R that does the following. 
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average 
#   of each variable for each activity and each subject.

### --------------


# activity labels

activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# data column names

features <- read.table("./UCI HAR Dataset/features.txt")

extractFeatures <- grepl("mean|std", features$V2)


### load test data -------------

# test data

x_Test <- read.table("./UCI HAR Dataset/test/x_test.txt")

y_Test <- read.table("./UCI HAR Dataset/test/y_test.txt")

subject_Test <- read.table("./UCI HAR Dataset/test/subject_test.txt")


# measurement column names

names(x_Test) <- features$V2

y_Test[, 2] <- activityLabels[y_Test[, 1]]

names(y_Test) <- c("Activity_ID", "Activity_Label")

names(subject_Test) <- "Subject"



# extract mean and standard deviation for each measurement

x_Test <- x_Test[, extractFeatures]


# merge test data

testData <- cbind(subject_Test, y_Test, x_Test)


### ----------------------------


### load train data ------------

x_Train <- read.table("./UCI HAR Dataset/train/x_train.txt")

y_Train <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_Train <- read.table("./UCI HAR Dataset/train/subject_train.txt")



# measurement column names

names(x_Train) <- features$V2

y_Train[, 2] <- activityLabels[y_Train[, 1]]

names(y_Train) <- c("Activity_ID", "Activity_Label")

names(subject_Train) <- "Subject"


# extract mean and standard deviation for each measurement

x_Train <- x_Train[, extractFeatures]


# merge train data

trainData <- cbind(subject_Train, y_Train, x_Train)


### ----------------------------


### merge test and train data 

data <- rbind(testData, trainData)


### create tidy data set with the average of each variable for each activity and each subject.

idLabels <- c("Subject", "Activity_ID", "Activity_Label")

dataLabels <- setdiff(colnames(data), idLabels)

meltData <- melt(data, id = idLabels, measure.vars = dataLabels)

tidyData <- dcast(meltData, Subject + Activity_Label ~ variable, fun.aggregate=mean)


### write tidy data to a text file

write.table(tidyData, file ="tidy_data.txt", row.names = FALSE)