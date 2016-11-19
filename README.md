# Cleaning Data Programming Assignment
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

## run_analysis.R
All of the heavy lifting is done in the run_analysis.R file. It uses a combination of methods (dplyr, tidyr, base r methods) to pull together, make tidy and summarize the file. It:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Note: step 4 actually takes place in step #1 in the code. 

## CodeBook
The CodeBook.md file describes the variables, the data, and any transformations or work performed.