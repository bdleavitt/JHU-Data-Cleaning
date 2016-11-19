library(dplyr)
library(tidyr)

## Download data if not already in folder
if(!file.exists("UCI HAR Dataset/")){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "Data.zip")
  unzip("Data.zip")
  file.remove("Data.zip")
}

## Set unzipped data file as working Directory
wd <- paste(getwd(), "UCI HAR Dataset/", sep = "/")
setwd(wd)

## Step #1: Merges the training and the test sets to create one data set.
train_set <- read.table("train/X_train.txt")            # read train data set
train_label <- read.table("train/y_train.txt")          # read train data labels
train_subject <- read.table("train/subject_train.txt")  # read train subject ids

test_set <- read.table("test/X_test.txt")               # read test data set
test_label <- read.table("test/y_test.txt")             # read test data labels
test_subject <- read.table("test/subject_test.txt")     # read test subject ids

full_set <- rbind(train_set, test_set)                  # combine train and test sets
full_label <- rbind(train_label, test_label)            # combine train and test labels
full_subject <- rbind(train_subject, test_subject)      # combine train and test subject ids

variable_names <- read.table("features.txt")            # read in the feature labels

names(full_subject) <- "subject_id"                     # apply subject ids 
names(full_label) <- "activity_id"                      # apply activity ids
names(full_set) <- variable_names$V2                    # apply variable names

full_data <- cbind(full_subject, full_label, full_set)  #put 'em all together

## Step #2: Extracts only the measurements on the mean and standard deviation for each measurement.
columns <- grepl(
  pattern = "mean|std", 
  x = colnames(full_data)[-(1:2)], 
  ignore.case = TRUE
)                                                       # skip 2 columns, match cols w/ mean or std in column
full_subset <- full_data[, c(TRUE, TRUE, columns)]      # keep first two columns, add the mean/std matches

## Step #3: Uses descriptive activity names to name the activities in the data set
activities <- read.table("activity_labels.txt")         # get activity labels
names(activities) <- c("activity_id", "activity")       # set activity column names
full_subset2 <- inner_join(activities, full_subset, by="activity_id") # join the datasets
full_subset2 <- full_subset2[,-1]                                        # drop activity ID column
head(full_subset2)

## Step #4: Appropriately labels the data set with descriptive variable names.
tidy_data <- tidyr::gather(data = full_subset2, key = "measurement", value = "value", 3:88)

# Step #5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_data2 <- tidy_data %>% group_by(measurement) %>% summarize(avg=mean(value)) %>% print

write.table(tidy_data2, file = "../tidy_data.txt", row.names = FALSE)
