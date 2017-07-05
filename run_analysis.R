#-------------------------------Downloading dataset and loading it------------------------------------
urlData <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
fileName <- "project_dataset.zip"
if(!file.exists(fileName)){
  download.file(urlData,fileName)
}
unzip(fileName)

#------------------------------Reading the files and putting them in variables-------------------------
#Reading the features (data description)
features <- read.table("./UCI HAR Dataset/features.txt")

#Reading training and test sets
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#-------------1] Merges the training and the test sets to create one data set.-----------------------
x <- rbind(x_train, X_test)
y <- rbind(y_train, y_test)
mergedData <- rbind(subject_train, subject_test)

#-----2] Extracts only the measurements on the mean and standard deviation for each measurement.-----

names(features) <- c('act_id', 'act_name')
extractVar <- grep("-mean\\(\\)|-std\\(\\)", features$act_name) 

#-----3]Uses descriptive activity names to name the activities in the data set------------------------
x <- x[, extractVar] 
names(x) <- gsub("\\(|\\)", "", (features[extractVar, 2]))

#--------4] Appropriately labels the data set with descriptive variable names.------------------------

features <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(features) <- c('act_id', 'act_name')
y[, 1] = features[y[, 1], 2]
names(y) <- "Activity"
names(mergedData) <- "Subject"
tidyDataSet <- cbind(mergedData, y, x)

#----5]Create an independent tidy data set with the average of each variable for each activity and each subject--
intendedVar <- tidyDataSet[, 3:dim(tidyDataSet)[2]] 
tidyData <- aggregate(intendedVar,list(tidyDataSet$Subject, tidyDataSet$Activity), mean)

names(tidyData)[1] <- "Subject"
names(tidyData)[2] <- "Activity"
write.table(tidyData, "tidyData.txt", sep="", row.names=FALSE)
