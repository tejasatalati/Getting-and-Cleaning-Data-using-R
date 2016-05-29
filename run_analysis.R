## Set Working Directory
setwd("C://Tejas//Learnings//Coursera//Getting_and_Cleaning_Data//Project")

library(data.table)

## CHeck if file exists else download the file and extract in the folder
fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists('./UCI HAR Dataset.zip')){
  download.file(fileurl,'./UCI HAR Dataset.zip', mode = 'wb')
  unzip("UCI HAR Dataset.zip", exdir = '.')
}

## Set Working directory to UCI HAR Dataset
setwd("C://Tejas//Learnings//Coursera//Getting_and_Cleaning_Data//Project//UCI HAR Dataset")

## 1. Merge the training and the test sets to create one data set

##Read features data
features <- read.csv('./features.txt', header = FALSE, sep = ' ')

## Read Activity Labels
activity_type <- read.table('./activity_labels.txt',header=FALSE)

## Read X-Train, Y-Train(activity) and Subject data
train_x <- read.table('./train/X_train.txt')
train_activity <- read.csv('./train/y_train.txt', header = FALSE, sep = ' ')
train_subject <- read.csv('./train/subject_train.txt',header = FALSE, sep = ' ')

## Assigin column names to datasets imported above
colnames(activity_type) <- c('activity','activityType')
colnames(train_subject) <- "subject"
colnames(train_x) <- features[,2]
colnames(train_activity) <- "activity"

## Build Training dataset 
data_train <-  data.frame(train_subject, train_activity, train_x)

## Read X-test, Y-test(activity) and Subject data
test_x <- read.table('./test/X_test.txt')
test_activity <- read.csv('./test/y_test.txt', header = FALSE, sep = ' ')
test_subject <- read.csv('./test/subject_test.txt', header = FALSE, sep = ' ')

## Assign column names to the test data imported above
colnames(test_subject) <- "subject"
colnames(test_x) <- features[,2] 
colnames(test_activity) <- "activity"

## Build Test dataframe
data_test <-  data.frame(test_subject, test_activity, test_x)

## Merge Test and Train Data
data_train_test <- rbind(data_train, data_test)

## Vector of ColumnNames
col_Names <- colnames(data_train_test)


## 2. Extract only the measurements on the mean and standard deviation for each measurement
selected_cols <- grep("-mean\\(\\)|-std\\(\\)", features[,2])
data_mean_std <- data_train_test[,c(1,2,selected_cols + 2)]


## 3.Use descriptive activity names to name the activities in the data set
finalData <- merge(data_mean_std,activity_type,by='activity',all.x=TRUE);

## Update Vector of ColumnNames to include activity name
col_Names <- colnames(finalData)

## 4.Appropriately label the data set with descriptive variable names.

## Rename column headers with meaningful names.
col_Names <- gsub("[(][)]","",col_Names)
col_Names <- gsub("[.]std","StdDev_",col_Names)
col_Names <- gsub("[.]mean","Mean_",col_Names)
col_Names <- gsub("^(t)","Time_",col_Names)
col_Names <- gsub("^(f)","Freq_",col_Names)
col_Names <- gsub("([Gg]ravity)","Gravity_",col_Names)
col_Names <- gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body_",col_Names)
col_Names <- gsub("[Gg]yro","Gyro_",col_Names)
col_Names <- gsub("Acc","AcclMtr_",col_Names)
col_Names <- gsub("Mag","Magnitude_",col_Names)
col_Names <- gsub("Jerk","Jerk_",col_Names)
col_Names <- gsub("[.]", "", col_Names)
col_Names <- gsub("-", "_", col_Names)


## Reapply updated column names to the dataset.
colnames(finalData) <- col_Names

str(finalData)
head(finalData,5)
tail(finalData,5)

## 5. From the data set in step 4, creates a second, independent tidy data set with 
## the average of each variable for each activity and each subject.

## Load reshape2 package
library(reshape2)

## Create new dataset without ActivityType
new_data <- finalData[,names(finalData) != 'activityType']

## Output tidy dataset
setwd("C://Tejas//Learnings//Coursera//Getting_and_Cleaning_Data//Project")

## Use melt to transform data by Activity and Subject variables.
melted <- melt(new_data, id=c("subject","activity"))

## use dcast function to calculate mean on melted dataset.
tidy_data <- dcast(melted, subject+activity ~ variable, mean)

## Merge tidyData with activityType to include acitvity names
final_tidy_data <- merge(data_tidy,activity_type,by = 'activity')

## Write tidy data to .csv file
write.csv(final_tidy_data, "Output_tidydata.csv", row.names=FALSE)
write.table(final_tidy_data,file = "./Output_tidydata.txt",row.names = FALSE, sep = '\t')









