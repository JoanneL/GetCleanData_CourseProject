#This course project requires dplyr package

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
setInternet2(use = TRUE)
download.file(fileurl, destfile="projectfile.zip")
unzip("projectfile.zip")

#Step 1
setwd("~/CourseProject/UCI HAR Dataset")
subject_test <- rename(read.table("~/CourseProject/UCI HAR Dataset/test/subject_test.txt"), subjectnum = V1)
X_test <- read.table("~/CourseProject/UCI HAR Dataset/test/X_test.txt")
test_label <- rename(read.table("~/CourseProject/UCI HAR Dataset/test/y_test.txt"), activity_lab = V1)
subject_train <- rename(read.table("~/CourseProject/UCI HAR Dataset/train/subject_train.txt"), subjectnum = V1)
X_train <- read.table("~/CourseProject/UCI HAR Dataset/train/X_train.txt")
train_label <- rename(read.table("~/CourseProject/UCI HAR Dataset/train/y_train.txt"), activity_lab = V1)
activity_labels <- rename(read.table("~/CourseProject/UCI HAR Dataset/activity_labels.txt"), activity_lab = V1, activity = V2)
features <- rename(read.table("~/CourseProject/UCI HAR Dataset/features.txt"), varnum = V1, feature = V2)

#combine subject number, activity label and test record into testgroup dataset
testgroup <- cbind(subject_test, test_label, X_test)

#combine subject number, activity label and train record into traingroup  dataset
traingroup <- cbind(subject_train, train_label, X_train)

#Merge test and training sets to one data set
alldata <- rbind(testgroup, traingroup)

#Step 2: First get column index by subsetting variable index number plus 2 
colindex <- grep("mean|std", features$feature)+2
selectdata <- alldata[, c(1, 2, colindex)]

#Step 3: Using right_join to combine activity name with activity number labels
selectdata <- right_join(activity_labels, selectdata, by="activity_lab")
selectdata$activity <- as.character(selectdata$activity)

#Step 4: Subsetting the specific featuring by filtering the varnum
varname <- as.character(filter(features, varnum %in% (colindex-2))[,2])
names(selectdata) <- c("activity_lab", "activity", "subjectnum", varname)

#Step 5: first group by activity and subjectnum; then calucate the mean of each variable
data2 <- selectdata %>% group_by(activity, subjectnum) %>% 
         summarise_each(funs(mean), 3:82)

write.table(data2, file="tidy_data.txt", row.names = FALSE)

View(read.table("tidy_data.txt", header = TRUE))