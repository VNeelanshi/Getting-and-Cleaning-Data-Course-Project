# Getting-and-Cleaning-Data-Course-Project
Final course assignment
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

# Based on the following points the script run_analysis.R works.
*-> Merges the training and the test sets to create one data set.
*-> Extracts only the measurements on the mean and standard deviation for each measurement.
*-> Uses descriptive activity names to name the activities in the data set
*-> Appropriately labels the data set with descriptive variable names.
*-> From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# About the dataset:
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. There are 10299 instances and 561 attributes. 

# Working of code:
The code first reads the dataset provided and extracts the required features only i.e. variables pertaining to mean() and std() only. The training and test datast is merged as per requirement. Also, proper variable column headings are given,

# Output:
The code creates a file tidyData.txt where it stores all the activities and its mean and standard deviation related measurements.

Refer the CodeBook.md for further description of the variables used in the script. 
